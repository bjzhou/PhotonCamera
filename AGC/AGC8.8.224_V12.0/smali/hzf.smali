.class public final synthetic Lhzf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;


# instance fields
.field public final synthetic a:Lhzh;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:J

.field public final synthetic d:Lxu;

.field public final synthetic e:Loem;


# direct methods
.method public synthetic constructor <init>(Lhzh;Landroid/graphics/Bitmap;Loem;JLxu;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhzf;->a:Lhzh;

    iput-object p2, p0, Lhzf;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lhzf;->e:Loem;

    iput-wide p4, p0, Lhzf;->c:J

    iput-object p6, p0, Lhzf;->d:Lxu;

    return-void
.end method


# virtual methods
.method public final onAvailabilityStatusFetched(I)V
    .locals 8

    iget-object v6, p0, Lhzf;->a:Lhzh;

    iget-object v2, p0, Lhzf;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lhzf;->e:Loem;

    iget-object v7, p0, Lhzf;->d:Lxu;

    if-nez p1, :cond_0

    new-instance p1, Lgwr;

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lgwr;-><init>(Lhzh;Landroid/graphics/Bitmap;Loem;I[B)V

    invoke-virtual {v6, p1}, Lhzh;->c(Ljava/lang/Runnable;)Lnou;

    move-result-object p1

    new-instance v0, Lcmc;

    const/16 v1, 0x13

    invoke-direct {v0, v7, v1}, Lcmc;-><init>(Lxu;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {p1, v0, v1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_0
    invoke-virtual {v6}, Lhzh;->e()Lcom/google/lens/sdk/LensApi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/lens/sdk/LensApi;->onPause()V

    return-void
.end method
