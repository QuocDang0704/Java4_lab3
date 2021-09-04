<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!doctype html>
    <html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

        <title>Register</title>
    </head>

    <body>
        <main class="container">
            <header class="row">
                <div class="col">
                    <div class="alert alert-success">
                        <h1>Dang ky</h1>
                    </div>

                </div>
            </header>
            <section class="row">
                <div class="col-7">
                    <div class="row">
                        <div class="col">
                            <form action="RegisterServlet" method="POST" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="username">Ten Dang Nhap :</label>
                                    <input type="text" id="username" name="username" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="password">Mat khau</label>
                                    <input type="password" name="password" id="password" class="form-control">
                                </div>
                                <div class="form-group">
                                	<label for="dateOfBirth">Ngay Sinh</label>
                                	<input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth"/>
                                </div>
                                
                                <div class="custom-file mb-4">
                                	<label for="image" class="custom-file-label">Hinh</label>
                                	<input type="file" class="custom-file-input" id="image" name="image"/>
                                </div>
                                
                                <div class="form-group">
                                    <label for="genderF">Gioi tinh:</label>
                                    <div class="form-check form-check-inline">
                                        <input type="radio" class="form-check-input" id="genderM" name="gender" value="true">
                                        <label for="genderM">Male</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input type="radio" class="form-check-input" id="genderF" name="gender" value="false">
                                        <label for="genderF">Female</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" name="married" id="married" value="true">
                                        <label for="married">Da co gia dinh chua</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nationality">Quoc tich:</label>
                                    <select name="nationality" id="nationality" class="form-control">
									<option value="vi">vietnam</option>
									<option value="us">My</option>
									<option value="jp">NhatBan</option>
								</select>
                                </div>
                                <div class="form-group">
                                    <label for="favorites">So thich</label>
                                    <div class="form-check form-check-inline">
                                        <input type="checkbox" class="form-check-input" name="favorites" id="read" value="Read">
                                        <label for="read">Doc Sach</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input type="checkbox" class="form-check-input" name="favorites" id="music" value="Music">
                                        <label for="music">Am Nhac</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input type="checkbox" class="form-check-input" name="favorites" id="tourist" value="Tourist">
                                        <label for="tourist">Du Lich</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input type="checkbox" class="form-check-input" name="favorites" id="others" value="others">
                                        <label for="others">khac</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="note">Ghi chu:</label>
                                    <textarea name="note" id="note" rows="3" class="form-control"></textarea>
                                </div>
                                <hr>
                                <button type="submit" class="btn btn-primary">Dang Ky</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-5">
                    <h3>Thong tin da duoc dang ky</h3>
                    <ul>
                    	<li>
                    		<img src="uploads/${staff.imageName }" alt="" class="img-fluid" width="150" />
                    	</li>
                    	
                        <li>UserName: ${staff.username}</li>
                        <li>password: ${staff.password}</li>
                        <li>gender: ${staff.gender ?'Nam':'Nu'}</li>
                        <li>married: ${staff.married ? 'da lap gia dinh': 'codon'}</li>
                        <li>nationality: ${staff.nationality}</li>
                        <li>favorites: ${staff.favorites}</li>
                        <li>note: ${staff.note}</li>
                    </ul>
                </div>
            </section>
        </main>

        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

    </body>

    </html>