.class public final Llrk;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:Llrr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2

    invoke-static {p1}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    instance-of v1, v0, Llrr;

    if-eqz v1, :cond_0

    check-cast v0, Llrr;

    iput-object v0, p0, Llrk;->b:Llrr;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    iput-object p1, p0, Llrk;->a:Ljava/io/OutputStream;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Llrk;->b:Llrr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llrk;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Llrk;->b:Llrr;

    iget-object v0, v0, Llrr;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    return-void

    :cond_0
    new-instance v0, Llrp;

    const-string v1, "Cannot sync underlying stream"

    invoke-direct {v0, v1}, Llrp;-><init>(Ljava/lang/String;)V

    throw v0
.end method
