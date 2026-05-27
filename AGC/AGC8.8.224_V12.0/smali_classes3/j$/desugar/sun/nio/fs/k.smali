.class final Lj$/desugar/sun/nio/fs/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/DirectoryStream;


# instance fields
.field a:Lj$/desugar/sun/nio/fs/l;


# direct methods
.method constructor <init>(Lj$/desugar/sun/nio/fs/m;Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/desugar/sun/nio/fs/l;

    invoke-direct {v0, p1, p2, p3}, Lj$/desugar/sun/nio/fs/l;-><init>(Lj$/desugar/sun/nio/fs/m;Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)V

    iput-object v0, p0, Lj$/desugar/sun/nio/fs/k;->a:Lj$/desugar/sun/nio/fs/l;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/k;->a:Lj$/desugar/sun/nio/fs/l;

    return-object v0
.end method
