.class public final synthetic Ligv;
.super Ljava/lang/Object;

# interfaces
.implements Lmqi;


# instance fields
.field public final synthetic a:Ligx;

.field public final synthetic b:Landroid/util/Size;

.field public final synthetic c:Lkab;

.field public final synthetic d:Z

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ligx;Landroid/util/Size;Lkab;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligv;->a:Ligx;

    iput-object p2, p0, Ligv;->b:Landroid/util/Size;

    iput-object p3, p0, Ligv;->c:Lkab;

    iput-boolean p4, p0, Ligv;->d:Z

    iput p5, p0, Ligv;->e:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Ligv;->a:Ligx;

    iget-object v1, p0, Ligv;->b:Landroid/util/Size;

    iget-object v2, p0, Ligv;->c:Lkab;

    iget-boolean v3, p0, Ligv;->d:Z

    iget v4, p0, Ligv;->e:I

    check-cast p1, Liot;

    iget-object v0, v0, Ligx;->c:Lgft;

    invoke-interface {v0}, Lgft;->f()Lkab;

    move-result-object v0

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v5, v1, v0, v4}, Ligx;->c(IILkab;I)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-interface {p1, v1, v0}, Liot;->d(II)Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Lkab;->a()I

    move-result v0

    invoke-static {p1, v0, v3}, Ligx;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v4}, Lihc;->b(Landroid/graphics/Bitmap;I)Lihc;

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lmpx;->a:Lmpx;

    :goto_0
    return-object p1
.end method
