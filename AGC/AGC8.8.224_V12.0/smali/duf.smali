.class public final synthetic Lduf;
.super Ljava/lang/Object;

# interfaces
.implements Lkml;


# instance fields
.field public final synthetic a:Ldug;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Ldug;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lduf;->a:Ldug;

    iput-wide p2, p0, Lduf;->b:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lduf;->a:Ldug;

    iget-wide v2, v0, Lduf;->b:J

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_0

    sget-object v4, Leac;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    const-string v5, "Warning: Samples used for vector determination is larger than 10 elements. This code is O(n) and expects small list sizes!"

    const/16 v6, 0x4d0

    invoke-static {v4, v5, v6}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkmo;

    if-eqz v6, :cond_2

    iget-wide v10, v7, Lkmo;->e:J

    iget-wide v12, v6, Lkmo;->e:J

    cmp-long v14, v10, v12

    if-lez v14, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    const/4 v10, 0x1

    :goto_1
    const-string v11, "samples must be sorted ascending in time"

    invoke-static {v10, v11}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-wide v10, v7, Lkmo;->e:J

    cmp-long v12, v10, v2

    if-lez v12, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, v7

    goto :goto_0

    :cond_4
    move-object v7, v5

    :goto_2
    const/4 v4, 0x2

    const/4 v10, 0x3

    if-nez v6, :cond_6

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    new-array v5, v10, [F

    iget v6, v7, Lkmo;->f:F

    aput v6, v5, v8

    iget v6, v7, Lkmo;->g:F

    aput v6, v5, v9

    iget v6, v7, Lkmo;->h:F

    aput v6, v5, v4

    goto :goto_3

    :cond_6
    if-nez v7, :cond_7

    new-array v5, v10, [F

    iget v7, v6, Lkmo;->f:F

    aput v7, v5, v8

    iget v7, v6, Lkmo;->g:F

    aput v7, v5, v9

    iget v6, v6, Lkmo;->h:F

    aput v6, v5, v4

    goto :goto_3

    :cond_7
    iget-wide v11, v6, Lkmo;->e:J

    sub-long v13, v2, v11

    iget-wide v4, v7, Lkmo;->e:J

    sub-long/2addr v4, v11

    new-array v10, v10, [F

    iget v11, v6, Lkmo;->f:F

    iget v12, v7, Lkmo;->f:F

    long-to-double v13, v13

    long-to-double v4, v4

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v4

    invoke-static {v11, v12, v13, v14}, Leac;->a(FFD)F

    move-result v4

    aput v4, v10, v8

    iget v4, v6, Lkmo;->g:F

    iget v5, v7, Lkmo;->g:F

    invoke-static {v4, v5, v13, v14}, Leac;->a(FFD)F

    move-result v4

    aput v4, v10, v9

    iget v4, v6, Lkmo;->h:F

    iget v5, v7, Lkmo;->h:F

    invoke-static {v4, v5, v13, v14}, Leac;->a(FFD)F

    move-result v4

    const/4 v5, 0x2

    aput v4, v10, v5

    move-object v5, v10

    :goto_3
    if-eqz v5, :cond_8

    iget-object v1, v1, Ldug;->d:Lduv;

    invoke-virtual {v1, v2, v3, v5}, Lduv;->h(J[F)V

    :cond_8
    return-void
.end method
