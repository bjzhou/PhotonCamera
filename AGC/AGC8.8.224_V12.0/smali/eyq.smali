.class public final synthetic Leyq;
.super Ljava/lang/Object;

# interfaces
.implements Lkva;


# instance fields
.field public final synthetic a:Leys;

.field public final synthetic b:Lhec;


# direct methods
.method public synthetic constructor <init>(Leys;Lhec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leyq;->a:Leys;

    iput-object p2, p0, Leyq;->b:Lhec;

    return-void
.end method


# virtual methods
.method public final a(Lkuz;)V
    .locals 13

    iget-object v7, p0, Leyq;->a:Leys;

    iget-object v8, p0, Leyq;->b:Lhec;

    iget-object v9, p1, Lkuz;->a:Lkvj;

    iget v0, v9, Lkvj;->a:I

    const/4 v10, 0x4

    and-int/2addr v0, v10

    if-eqz v0, :cond_6

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, v9, Lkvj;->d:Lkvg;

    if-nez v1, :cond_0

    sget-object v1, Lkvg;->b:Lkvg;

    :cond_0
    iget-object v1, v1, Lkvg;->a:Lnxa;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkvf;

    iget-object v3, v2, Lkvf;->c:Lkve;

    if-nez v3, :cond_2

    sget-object v3, Lkve;->b:Lkve;

    :cond_2
    iget-object v3, v3, Lkve;->a:Lnxa;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v2, Lkvf;->c:Lkve;

    if-nez v2, :cond_3

    sget-object v2, Lkve;->b:Lkve;

    :cond_3
    iget-object v2, v2, Lkve;->a:Lnxa;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkvd;

    iget-object v4, v3, Lkvd;->a:Ljava/lang/String;

    iget v3, v3, Lkvd;->b:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v7, Leys;->j:Ldga;

    iget-object v2, v9, Lkvj;->b:Lkvi;

    if-nez v2, :cond_5

    sget-object v2, Lkvi;->b:Lkvi;

    :cond_5
    iget-wide v2, v2, Lkvi;->a:J

    invoke-interface {v1, v2, v3, v0}, Ldga;->by(JLjava/util/Map;)V

    :cond_6
    iget-object v0, v9, Lkvj;->c:Lkvh;

    if-nez v0, :cond_7

    sget-object v0, Lkvh;->d:Lkvh;

    :cond_7
    iget v0, v0, Lkvh;->a:I

    and-int/2addr v0, v10

    if-eqz v0, :cond_e

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, v9, Lkvj;->c:Lkvh;

    if-nez v1, :cond_8

    sget-object v1, Lkvh;->d:Lkvh;

    :cond_8
    iget-object v1, v1, Lkvh;->c:Lmet;

    if-nez v1, :cond_9

    sget-object v1, Lmet;->b:Lmet;

    :cond_9
    iget-object v1, v1, Lmet;->a:Lnxa;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmes;

    iget-object v3, v2, Lmes;->a:Lmeu;

    if-nez v3, :cond_b

    sget-object v3, Lmeu;->b:Lmeu;

    :cond_b
    iget-object v3, v3, Lmeu;->a:Lnwx;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    iget v2, v2, Lmes;->b:I

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_c
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v7, Leys;->i:Ldft;

    iget-object v2, v9, Lkvj;->b:Lkvi;

    if-nez v2, :cond_d

    sget-object v2, Lkvi;->b:Lkvi;

    :cond_d
    iget-wide v2, v2, Lkvi;->a:J

    invoke-interface {v1, v2, v3, v0}, Ldft;->g(JLjava/util/Map;)V

    :cond_e
    iget-object v0, v9, Lkvj;->c:Lkvh;

    if-nez v0, :cond_f

    sget-object v0, Lkvh;->d:Lkvh;

    :cond_f
    iget-object v0, v0, Lkvh;->b:Lmej;

    if-nez v0, :cond_10

    sget-object v0, Lmej;->b:Lmej;

    :cond_10
    iget-object v0, v0, Lmej;->a:Lnxa;

    invoke-interface {v0}, Lnxa;->size()I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {v7}, Leys;->g()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_11
    iget-object v0, p1, Lkuz;->b:Ljava/util/List;

    iget-object p1, p1, Lkuz;->c:Lkvb;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;

    sget-object v0, Lmpx;->a:Lmpx;

    iget-object v2, p1, Lkvb;->a:Lnxa;

    invoke-interface {v2}, Lnxa;->size()I

    move-result v2

    if-lez v2, :cond_12

    iget-object p1, p1, Lkvb;->a:Lnxa;

    invoke-interface {p1, v1}, Lnxa;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnui;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    move-object v3, p1

    goto :goto_2

    :cond_12
    move-object v3, v0

    :goto_2
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v11}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getActionType()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    invoke-static {}, Lheb;->a()Lhea;

    move-result-object p1

    invoke-interface {v11}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v11}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lhea;->a:Ljava/lang/String;

    goto :goto_3

    :sswitch_0
    iget-object p1, v7, Leys;->v:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, v7, Leys;->v:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;

    invoke-interface {p1}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getId()J

    move-result-wide v0

    invoke-interface {v11}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1c

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, v7, Leys;->v:Lmqp;

    invoke-interface {v8}, Lhec;->a()V

    return-void

    :cond_13
    :goto_3
    invoke-interface {v11}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v11}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lhea;->b:Landroid/graphics/drawable/Drawable;

    :cond_14
    invoke-interface {v11}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getActionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    invoke-interface {v11}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getOnChipClickListener()Ljava/lang/Runnable;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    :cond_15
    invoke-interface {v11}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getActionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    invoke-interface {v11}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getBitmapProvider()Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult$BitmapProvider;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcfu;

    const/16 v6, 0x9

    move-object v0, v12

    move-object v1, v7

    move-object v2, v11

    move-object v4, v9

    invoke-direct/range {v0 .. v6}, Lcfu;-><init>(Leys;Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;Lmqp;Lkvj;Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult$BitmapProvider;I)V

    move-object v2, v12

    goto :goto_4

    :cond_16
    const/4 v0, 0x0

    move-object v2, v0

    :goto_4
    if-eqz v2, :cond_17

    new-instance v6, Lapv;

    const/16 v5, 0x9

    move-object v0, v6

    move-object v1, v7

    move-object v3, v11

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lapv;-><init>(Leys;Ljava/lang/Runnable;Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;Lkvj;I)V

    iput-object v6, p1, Lhea;->c:Ljava/lang/Runnable;

    :cond_17
    invoke-interface {v11}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getChipContentDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v11}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getChipContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lhea;->e:Ljava/lang/String;

    :cond_18
    invoke-interface {v11}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getOnCloseButtonClickListener()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_19

    new-instance v0, Leow;

    const/4 v1, 0x5

    invoke-direct {v0, v7, v11, v9, v1}, Leow;-><init>(Leys;Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;Lkvj;I)V

    iput-object v0, p1, Lhea;->f:Ljava/lang/Runnable;

    :cond_19
    invoke-interface {v11}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getTimeout()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lhea;->e(J)V

    new-instance v0, Leow;

    const/4 v1, 0x6

    invoke-direct {v0, v7, v11, v9, v1}, Leow;-><init>(Leys;Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;Lkvj;I)V

    iput-object v0, p1, Lhea;->g:Ljava/lang/Runnable;

    new-instance v0, Levy;

    invoke-direct {v0, v7, v11, v10}, Levy;-><init>(Leys;Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;I)V

    iput-object v0, p1, Lhea;->h:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lhea;->a()Lheb;

    move-result-object p1

    iget-object v0, v7, Leys;->v:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v7, Leys;->v:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;

    invoke-interface {v0}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getId()J

    move-result-wide v0

    invoke-interface {v11}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1a

    goto :goto_5

    :cond_1a
    invoke-interface {v8, p1}, Lhec;->c(Lheb;)V

    return-void

    :cond_1b
    :goto_5
    invoke-static {v11}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, v7, Leys;->v:Lmqp;

    invoke-interface {v8, p1}, Lhec;->b(Lheb;)V

    return-void

    :cond_1c
    :sswitch_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method
