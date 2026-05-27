.class public final synthetic Lled;
.super Ljava/lang/Object;

# interfaces
.implements Lmqi;


# instance fields
.field public final synthetic a:Llef;

.field public final synthetic b:Landroid/media/MediaFormat;

.field public final synthetic c:Lnph;


# direct methods
.method public synthetic constructor <init>(Llef;Landroid/media/MediaFormat;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lled;->a:Llef;

    iput-object p2, p0, Lled;->b:Landroid/media/MediaFormat;

    iput-object p3, p0, Lled;->c:Lnph;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lled;->a:Llef;

    iget-object v1, p0, Lled;->b:Landroid/media/MediaFormat;

    iget-object v2, p0, Lled;->c:Lnph;

    check-cast p1, Lleb;

    iget-object v0, v0, Llef;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lleb;->c()Lnou;

    move-result-object v0

    new-instance v3, Lhga;

    const/16 v4, 0x12

    invoke-direct {v3, v1, v4}, Lhga;-><init>(Landroid/media/MediaFormat;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {v0, v3, v1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnph;->f(Lnou;)Z

    return-object p1
.end method
