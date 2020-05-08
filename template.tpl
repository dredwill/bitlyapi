<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

    <title><?php echo $title; ?></title>
</head>
<body class="container">
<div class="row">
    <div class="col-12 mt-5">
        <h1>URL conversion</h1>

        <form action="" method="POST">
            <div class="form-group">
                <label for="url">URL</label>
                <input name="url" type="text" class="form-control" id="url" aria-describedby="urlHelp" placeholder="Input URL">
                <small id="urlHelp" class="form-text text-muted">Please enter an URL</small>
            </div>
            <div class="form-group">
                <label for="select">Select the desired conversion</label>
                <select name="select" class="form-control" id="select">
                    <option value="longToShort">Long to short</option>
                    <option value="shortToLong">Short to long</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
<?php if(isset($response)): ?>
    <div class="col-12 mt-5">
        <div class="alert alert-<?php echo $response['status']; ?>" role="alert">
            <?php echo $response['data']; ?>
        </div>
    </div>
<?php endif; ?>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>