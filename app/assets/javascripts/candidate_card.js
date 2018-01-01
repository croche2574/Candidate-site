var transform =    {"<>":"main","class":"main","html":[
                        {"<>":"div","class":"row","html":[
                            {"<>":"div","class":"about-the-candidate cardTemplate","html":[
                                {"<>":"h3","class":"race","html":"${race}"},
                                {"<>":"div","class":"row","html":[
                                    {"<>":"div","class":"date","hidden":"","html":""},
                                    {"<>":"div","class":"small-12 medium-3 columns","html":[
                                        {"<>":"div","class":"candidate-image","html":[
                                            {"<>":"img","src":"${imageURL}","id":"candidateImage","html":""}
                                        ]},
                                        {"<>":"div","class":"candidate-social socialMedia","html":[
                                            {"<>":"a","href":"${facebookURL}","class":"facebook","html":[
                                                {"<>":"span","class":"fa-stack fa-lg facebook","html":[
                                                    {"<>":"i","class":"fa fa-circle fa-stack-2x","html":""},
                                                    {"<>":"i","class":"fa fa-facebook fa-stack-1x fa-inverse","html":""}
                                                ]}
                                            ]},
                                            {"<>":"a","href":"${email}","class":"email","html":[
                                                {"<>":"span","class":"fa-stack fa-lg email","html":[
                                                    {"<>":"i","class":"fa fa-circle fa-stack-2x","html":""},
                                                    {"<>":"i","class":"fa fa-envelope fa-stack-1x fa-inverse","html":""}
                                                ]}
                                            ]},
                                            {"<>":"a","href":"${websiteURL}","class":"website","html":[
                                                {"<>":"span","class":"fa-stack fa-lg website","html":[
                                                    {"<>":"i","class":"fa fa-circle fa-stack-2x","html":""},
                                                    {"<>":"i","class":"fa fa-link fa-stack-1x fa-inverse","html":""}
                                                ]}
                                            ]}
                                        ]}
                                    ]},
                                    {"<>":"div","class":"small-12 medium-8 columns","html":[
                                        {"<>":"h4","class":"candidate-info name","html":"${name}"},
                                        {"<>":"ul","html":[
                                            {"<>":"li","class":"phone-number","html":"Phone Number: ${phone}"},
                                            {"<>":"li","class":"address","html":"Address: ${address}"},
                                            {"<>":"li","class":"progressive-rating","html":"Progressive Rating: ${rating}"}
                                        ]},
                                        {"<>":"button","class":"candidate-views-button","html":"View Responses"}
                                    ]}
                                ]}
                            ]}
                        ]},
                        {"<>":"br","html":""}
                    ]}

var data = [
           {'race':'U.S. Senate',
           'imageURL':'http://clientsdata.buco3.com/183/images/uploaded/tamikalyles_ussenate_2018.jpg',
           'name':'Tamika Lyles',
           'phone':'test',
           'address':'test',
           'rating':'very progressive'}

           
];


$(function(){ $('candidate-card').json2html(data,transform); });