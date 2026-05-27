.class public final Lgff;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;

.field public static final b:Lmvk;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "com/google/android/apps/camera/optionsbar/menuitem/MenuItemModule"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgff;->a:Lnak;

    sget-object v0, Lgej;->aq:Lgej;

    sget-object v1, Lgej;->am:Lgej;

    sget-object v2, Lgej;->an:Lgej;

    sget-object v3, Lgej;->ao:Lgej;

    sget-object v4, Lgej;->ap:Lgej;

    const-string v5, "pano_photosphere"

    invoke-static {v5, v0}, Llkj;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "pano_horizontal"

    invoke-static {v6, v1}, Llkj;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v7, "pano_vertical"

    invoke-static {v7, v2}, Llkj;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v8, "pano_wide"

    invoke-static {v8, v3}, Llkj;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v9, "pano_fisheye"

    invoke-static {v9, v4}, Llkj;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Lmyt;

    const/16 v11, 0xa

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v5, 0x1

    aput-object v0, v11, v5

    const/4 v0, 0x2

    aput-object v6, v11, v0

    const/4 v0, 0x3

    aput-object v1, v11, v0

    const/4 v0, 0x4

    aput-object v7, v11, v0

    const/4 v0, 0x5

    aput-object v2, v11, v0

    const/4 v1, 0x6

    aput-object v8, v11, v1

    const/4 v1, 0x7

    aput-object v3, v11, v1

    const/16 v1, 0x8

    aput-object v9, v11, v1

    const/16 v1, 0x9

    aput-object v4, v11, v1

    invoke-direct {v10, v11, v0}, Lmyt;-><init>([Ljava/lang/Object;I)V

    sput-object v10, Lgff;->b:Lmvk;

    return-void
.end method

.method public static a(Z)Lgeq;
    .locals 9

    if-eqz p0, :cond_0

    const v0, 0x7f08033c

    goto :goto_0

    :cond_0
    const v0, 0x7f080348

    :goto_0
    const/4 v1, 0x1

    if-eq v1, p0, :cond_1

    const v2, 0x7f1400d2

    goto :goto_1

    :cond_1
    const v2, 0x7f1400d3

    :goto_1
    if-eq v1, p0, :cond_2

    const v3, 0x7f1400d4

    goto :goto_2

    :cond_2
    const v3, 0x7f1400d5

    :goto_2
    if-eq v1, p0, :cond_3

    const v4, 0x7f1401aa

    goto :goto_3

    :cond_3
    const v4, 0x7f140305

    :goto_3
    if-eq v1, p0, :cond_4

    const v5, 0x7f1401b0

    goto :goto_4

    :cond_4
    const v5, 0x7f140306

    :goto_4
    if-eq v1, p0, :cond_5

    const v6, 0x7f080347

    goto :goto_5

    :cond_5
    const v6, 0x7f0801b8

    :goto_5
    if-eq v1, p0, :cond_6

    const v7, 0x7f1400d0

    goto :goto_6

    :cond_6
    const v7, 0x7f1400d1

    :goto_6
    if-eq v1, p0, :cond_7

    const v1, 0x7f1401a8

    goto :goto_7

    :cond_7
    const v1, 0x7f1401ab

    :goto_7
    if-eqz p0, :cond_8

    sget-object p0, Lgej;->m:Lgej;

    goto :goto_8

    :cond_8
    sget-object p0, Lgej;->l:Lgej;

    :goto_8
    invoke-static {}, Lger;->o()Lgeq;

    move-result-object v8

    invoke-virtual {v8, v4}, Lgeq;->h(I)V

    invoke-virtual {v8, v5}, Lgeq;->c(I)V

    sget-object v4, Lgej;->k:Lgej;

    const v5, 0x7f1401ad

    invoke-virtual {v8, v4, v0, v2, v5}, Lgeq;->b(Lgej;III)V

    invoke-virtual {v8, p0, v6, v7, v1}, Lgeq;->b(Lgej;III)V

    sget-object p0, Lgej;->j:Lgej;

    const v0, 0x7f080349

    const v1, 0x7f1401af

    invoke-virtual {v8, p0, v0, v3, v1}, Lgeq;->b(Lgej;III)V

    return-object v8
.end method
