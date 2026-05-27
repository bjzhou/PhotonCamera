.class public final synthetic Lhzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;


# instance fields
.field public final synthetic a:Lhzh;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lhzh;I)V
    .locals 0

    iput p2, p0, Lhzd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhzd;->a:Lhzh;

    return-void
.end method


# virtual methods
.method public final onAvailabilityStatusFetched(I)V
    .locals 4

    iget v0, p0, Lhzd;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhzd;->a:Lhzh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, v0, Lhzh;->e:Lnph;

    if-nez p1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lhzd;->a:Lhzh;

    if-nez p1, :cond_3

    invoke-static {}, Lhza;->a()Lhyz;

    move-result-object p1

    invoke-virtual {v0}, Lhzh;->e()Lcom/google/lens/sdk/LensApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/lens/sdk/LensApi;->a()Lium;

    move-result-object v3

    iget v3, v3, Lium;->a:I

    and-int/2addr v3, v2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1, v3}, Lhyz;->b(Z)V

    invoke-virtual {v0}, Lhzh;->e()Lcom/google/lens/sdk/LensApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/lens/sdk/LensApi;->a()Lium;

    move-result-object v3

    iget v3, v3, Lium;->a:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_1
    invoke-virtual {p1, v1}, Lhyz;->c(Z)V

    invoke-virtual {v0}, Lhzh;->e()Lcom/google/lens/sdk/LensApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/lens/sdk/LensApi;->e()Z

    move-result v1

    invoke-virtual {p1, v1}, Lhyz;->d(Z)V

    invoke-virtual {v0}, Lhzh;->e()Lcom/google/lens/sdk/LensApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/lens/sdk/LensApi;->a()Lium;

    move-result-object v1

    iget-object v1, v1, Lium;->b:Liul;

    if-nez v1, :cond_2

    sget-object v1, Liul;->b:Liul;

    :cond_2
    iget-object v1, v1, Liul;->a:Lnxa;

    invoke-static {v1}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v1

    invoke-virtual {p1, v1}, Lhyz;->e(Lmvv;)V

    invoke-virtual {p1}, Lhyz;->a()Lhza;

    move-result-object p1

    iget-object v0, v0, Lhzh;->f:Lnph;

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget-object p1, v0, Lhzh;->f:Lnph;

    invoke-static {}, Lhza;->a()Lhyz;

    move-result-object v0

    invoke-virtual {v0}, Lhyz;->a()Lhza;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_4
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
