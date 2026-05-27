.class public final Lbpy;
.super Ljava/lang/Object;

# interfaces
.implements Lbpz;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lbrc;Lbsu;I)V
    .locals 0

    iput p3, p0, Lbpy;->c:I

    iput-object p1, p0, Lbpy;->b:Ljava/lang/Object;

    iput-object p2, p0, Lbpy;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lbsu;I)V
    .locals 0

    iput p3, p0, Lbpy;->c:I

    iput-object p1, p0, Lbpy;->a:Ljava/lang/Object;

    iput-object p2, p0, Lbpy;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lbsu;I)V
    .locals 0

    iput p3, p0, Lbpy;->c:I

    iput-object p1, p0, Lbpy;->a:Ljava/lang/Object;

    iput-object p2, p0, Lbpy;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbpv;)I
    .locals 3

    iget v0, p0, Lbpy;->c:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    new-instance v0, Lbxa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lbpy;->a:Ljava/lang/Object;

    iget-object v1, p0, Lbpy;->b:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1}, Lbpv;->b(Ljava/nio/ByteBuffer;Lbsu;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lbpy;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcaj;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lbpy;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcaj;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    throw p1

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lbpy;->a:Ljava/lang/Object;

    iget-object v1, p0, Lbpy;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    invoke-interface {p1, v0, v1}, Lbpv;->a(Ljava/io/InputStream;Lbsu;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lbpy;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return p1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lbpy;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    throw p1

    :goto_0
    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lbpy;->b:Ljava/lang/Object;

    check-cast v2, Lbrc;

    invoke-virtual {v2}, Lbrc;->c()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v2, p0, Lbpy;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lbxa;-><init>(Ljava/io/InputStream;Lbsu;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v1, p0, Lbpy;->a:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lbpv;->a(Ljava/io/InputStream;Lbsu;)I

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v0}, Lbxa;->b()V

    iget-object v0, p0, Lbpy;->b:Ljava/lang/Object;

    check-cast v0, Lbrc;

    invoke-virtual {v0}, Lbrc;->c()Landroid/os/ParcelFileDescriptor;

    return p1

    :catchall_2
    move-exception p1

    goto :goto_1

    :catchall_3
    move-exception p1

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbxa;->b()V

    :cond_0
    iget-object v0, p0, Lbpy;->b:Ljava/lang/Object;

    check-cast v0, Lbrc;

    invoke-virtual {v0}, Lbrc;->c()Landroid/os/ParcelFileDescriptor;

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
