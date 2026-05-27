.class public final synthetic Lgog;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/base/function/LongFloatConsumer;


# instance fields
.field public final synthetic a:Lehb;


# direct methods
.method public synthetic constructor <init>(Lehb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgog;->a:Lehb;

    return-void
.end method


# virtual methods
.method public final accept(JF)V
    .locals 2

    iget-object p1, p0, Lgog;->a:Lehb;

    sget-object p2, Lgop;->a:Lnak;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-static {p2}, Lmoz;->e(Z)V

    cmpl-float p2, p3, v0

    if-nez p2, :cond_1

    iget-object p2, p1, Lehb;->d:Lehe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lehe;->b:J

    :cond_1
    iget-object p1, p1, Lehb;->a:Lgaa;

    sget-object p2, Ledl;->a:Lilz;

    invoke-interface {p1, p2, p3}, Lgaa;->a(Lilz;F)V

    :cond_2
    return-void
.end method
