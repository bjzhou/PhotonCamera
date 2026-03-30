.class final Lcjs;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lcju;


# direct methods
.method public constructor <init>(Lcju;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcjs;->a:Lcju;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lchv;->o()Lchs;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Lcei;->i()V

    goto/32 :goto_17

    nop

    nop

    :goto_6
    invoke-interface {p1}, Lcei;->i()V

    goto/32 :goto_d

    nop

    nop

    :goto_7
    iget v1, p0, Lcju;->h:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lcjs;->a:Lcju;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v5}, Lcei;->k()V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-interface {v2}, Lchs;->b()Lcei;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v2, v3, v4}, Lchs;->h(J)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x6

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Lcju;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-interface {v2}, Lchs;->b()Lcei;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    check-cast p1, Lchv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    invoke-interface {v2}, Lchs;->b()Lcei;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v2}, Lchs;->a()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v2, v3, v4}, Lchs;->h(J)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lcju;->a:Lcin;

    nop

    :try_start_0
    move-object v5, v2

    nop

    nop

    nop

    check-cast v5, Lcho;

    nop

    iget-object v5, v5, Lcho;->a:Lchx;

    nop

    nop

    nop

    const-wide/16 v6, 0x0

    nop

    invoke-interface {v5, v0, v1, v6, v7}, Lchx;->b(FFJ)V

    invoke-virtual {p0, p1}, Lcin;->b(Lchv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    const v1, 0x6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
