.class public final Ldfw;
.super Ljava/lang/Object;

# interfaces
.implements Ldgq;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ldfy;I)V
    .locals 0

    iput p2, p0, Ldfw;->b:I

    iput-object p1, p0, Ldfw;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ldgj;I)V
    .locals 0

    iput p2, p0, Ldfw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfw;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 9

    iget v0, p0, Ldfw;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldfw;->a:Ljava/lang/Object;

    check-cast v0, Ldgj;

    iget-object v3, v0, Ldgj;->e:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Ldgj;->e:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldgi;

    iget v3, v3, Ldgi;->a:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Ldgj;->c:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_7

    iget-object v3, v0, Ldgj;->e:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldgi;

    iget v3, v3, Ldgi;->b:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v0, v0, Ldgj;->d:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_6

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Ldfw;->a:Ljava/lang/Object;

    check-cast v0, Ldgj;

    iget-object v3, v0, Ldgj;->e:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Ldgj;->e:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldgi;

    iget v3, v3, Ldgi;->a:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Ldgj;->a:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget-object v0, v0, Ldgj;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgi;

    iget v0, v0, Ldgi;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v3, Ldgj;->b:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    return v1

    :cond_0
    return v2

    :pswitch_1
    iget-object v0, p0, Ldfw;->a:Ljava/lang/Object;

    check-cast v0, Ldfy;

    iget-object v0, v0, Ldfy;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldfw;->a:Ljava/lang/Object;

    check-cast v0, Ldfy;

    iget-object v0, v0, Ldfy;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldfw;->a:Ljava/lang/Object;

    check-cast v0, Ldfy;

    iget-object v0, v0, Ldfy;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldfx;

    iget v0, v0, Ldfx;->a:F

    iget-object v3, p0, Ldfw;->a:Ljava/lang/Object;

    check-cast v3, Ldfy;

    iget-object v3, v3, Ldfy;->c:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldfx;

    iget v3, v3, Ldfx;->b:F

    iget-object v4, p0, Ldfw;->a:Ljava/lang/Object;

    check-cast v4, Ldfy;

    iget-object v4, v4, Ldfy;->c:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldfx;

    iget-boolean v4, v4, Ldfx;->c:Z

    float-to-double v5, v0

    sget-object v0, Ldfy;->a:Landroid/util/Range;

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpg-double v0, v5, v7

    if-gtz v0, :cond_2

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2

    :pswitch_2
    iget-object v0, p0, Ldfw;->a:Ljava/lang/Object;

    check-cast v0, Ldfy;

    iget-object v0, v0, Ldfy;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldfw;->a:Ljava/lang/Object;

    check-cast v0, Ldfy;

    iget-object v0, v0, Ldfy;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldfw;->a:Ljava/lang/Object;

    check-cast v0, Ldfy;

    iget-object v0, v0, Ldfy;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldfx;

    iget v0, v0, Ldfx;->a:F

    iget-object v3, p0, Ldfw;->a:Ljava/lang/Object;

    check-cast v3, Ldfy;

    iget-object v3, v3, Ldfy;->c:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldfx;

    iget v3, v3, Ldfx;->b:F

    iget-object v4, p0, Ldfw;->a:Ljava/lang/Object;

    check-cast v4, Ldfy;

    iget-object v4, v4, Ldfy;->c:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldfx;

    iget-boolean v4, v4, Ldfx;->c:Z

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x4046800000000000L    # 45.0

    cmpl-double v0, v5, v7

    if-gez v0, :cond_4

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v0, v5, v7

    if-gez v0, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_1
    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_6
    return v2

    :cond_7
    :goto_3
    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
