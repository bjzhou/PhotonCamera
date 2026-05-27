.class public final Lbpx;
.super Ljava/lang/Object;

# interfaces
.implements Lbqa;


# instance fields
.field final synthetic a:Lbrc;

.field final synthetic b:Lbsu;


# direct methods
.method public constructor <init>(Lbrc;Lbsu;)V
    .locals 0

    iput-object p1, p0, Lbpx;->a:Lbrc;

    iput-object p2, p0, Lbpx;->b:Lbsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbpv;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 3

    :try_start_0
    new-instance v0, Lbxa;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lbpx;->a:Lbrc;

    invoke-virtual {v2}, Lbrc;->c()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v2, p0, Lbpx;->b:Lbsu;

    invoke-direct {v0, v1, v2}, Lbxa;-><init>(Ljava/io/InputStream;Lbsu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1, v0}, Lbpv;->c(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lbxa;->b()V

    iget-object v0, p0, Lbpx;->a:Lbrc;

    invoke-virtual {v0}, Lbrc;->c()Landroid/os/ParcelFileDescriptor;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbxa;->b()V

    :cond_0
    iget-object v0, p0, Lbpx;->a:Lbrc;

    invoke-virtual {v0}, Lbrc;->c()Landroid/os/ParcelFileDescriptor;

    throw p1
.end method
