// Gruntfile.js
var Webpack = require('webpack');
var path = require('path');

module.exports = function(grunt) {
    grunt.initConfig({
        webpack: {
            initial: {
                entry: {
                  homePage: path.resolve(__dirname, 'src', 'js', 'homePage.js')
                },
                output: {
                    filename: '[name].js',
                    path: 'dublove/javascript'
                },
                stats: {
                    colors: false,
                    modules: true,
                    reasons: true
                },
                plugins: [
                  //   new Webpack.optimize.UglifyJsPlugin({
                  //     minimize: true
                  //  })
                ]
            }
        },
        sass: {
            build: {
                files: [{
                    expand: true,
                    cwd: 'src/sass',
                    src: ['*.scss'],
                    dest: 'dublove/css',
                    ext: '.css'
                }]
            }
        },
        postcss: {
            options: {
                map: false,
                processors: [
                    require('autoprefixer')({
                        browsers: ['> 1%'],
                        remove: false
                    })
                ]
            },
            dist: {
                files: [{
                    expand: true,
                    cwd: 'dublove/css',
                    src: ['*.css'],
                    dest: 'dublove/css'
                }]
            }
        },
        cssmin: {
            target: {
                files: [{
                    expand: true,
                    cwd: 'dublove/css',
                    src: ['*.css', '!*.min.css'],
                    dest: 'dublove/css',
                    ext: '.min.css'
                }]
            }
        },
        svgmin: {
            options: {
                plugins: [{
                    removeViewBox: false
                }, {
                    removeUselessStrokeAndFill: false
                }]
            },
            dist: {
                files: [{
                    expand: true,
                    cwd: 'src/svg',
                    src: ['*.svg'],
                    dest: "dublove/images"
                }],
            }
        },
        grunticon: {
            icons: {
                files: [{
                    expand: true,
                    cwd: 'dublove/images',
                    src: ['*.svg'],
                    dest: "dublove/icons"
                }],
            }
        },
        watch: {
            css: {
                files: ['src/sass/**/*.scss'],
                tasks: ['sass', 'postcss', 'cssmin'],
                options: {
                    livereload: true
                }
            },
            js: {
                files: ['src/js/**/*.js'],
                tasks: ['webpack'],
                options: {
                    livereload: true
                }
            },
            svg: {
                files: ['src/svg/*.svg'],
                tasks: ['svgmin', 'grunticon'],
                options: {
                    livereload: true
                }
            },
            html: {
                files: ['*.html'],
                options: {
                    livereload: true
                }
            }
        },
        concurrent: {
            options: {
                logConcurrentOutput: true
            },
            tasks: ['watch']
        }
    });
    grunt.loadNpmTasks('grunt-webpack');
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-concurrent');
    grunt.loadNpmTasks('grunt-postcss');
    grunt.loadNpmTasks('grunt-svgmin');
    grunt.loadNpmTasks('grunt-grunticon');
    grunt.loadNpmTasks('grunt-notify');

    grunt.registerTask('default', ['webpack', 'sass', 'cssmin', 'svgmin', 'grunticon', 'concurrent']);

};
