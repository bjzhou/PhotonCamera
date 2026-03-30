.class public final Lrou;
.super Lrol;
.source "PG"

# interfaces
.implements Lroj;


# instance fields
.field private final a:Ljava/lang/Exception;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lroj;Lroy;ZLrpd;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lrox;->b:Lroy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2, p3, p5}, Lrol;-><init>(Ljava/lang/String;Lrpe;Lroy;Lrpd;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-interface {p2}, Lroj;->e()Ljava/lang/Exception;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lrou;->a:Ljava/lang/Exception;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const-string v0, "<missing root>:"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-static {p3, v0}, Lroy;->a(Lroy;Lroy;)Lroy;

    move-result-object p3

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    iput-boolean p4, p0, Lrou;->b:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Lroy;ZLrpd;)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_3
    sget-object v0, Lros;->a:Lros;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    iput-object p1, p0, Lrou;->a:Ljava/lang/Exception;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, v0, p2, p4}, Lrol;-><init>(Ljava/lang/String;Ljava/util/UUID;Lroy;Lrpd;)V

    goto/32 :goto_7

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p1, Lrot;->a:Lroh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean p3, p0, Lrou;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p2, v1}, Lroy;->a(Lroy;Lroy;)Lroy;

    move-result-object p2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lros;->b()Ljava/util/UUID;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    sget-object v1, Lrox;->b:Lroy;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    const-string v1, "<missing root>:"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method


# virtual methods
.method public final d(Ljava/lang/String;Lroy;ZLrpd;)Lrpe;
    .locals 7

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p3, p0, Lrou;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_22

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v5, v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_6
    if-nez p3, :cond_1

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_1
    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v6, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lror;->a:Ljava/util/WeakHashMap;

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    if-nez p3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    move-object v4, p2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    if-nez p3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    :goto_12
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    :goto_16
    iget-boolean v0, p0, Lrou;->b:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0xa

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    invoke-direct/range {v1 .. v6}, Lrou;-><init>(Ljava/lang/String;Lroj;Lroy;ZLrpd;)V

    goto/32 :goto_2

    nop

    nop

    :goto_19
    new-instance v0, Lrou;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v2, p1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    move-object v3, p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1d
    move v5, p3

    nop

    nop

    :goto_1e
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    iget-boolean p3, p0, Lrou;->b:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Ljava/lang/Exception;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrou;->a:Ljava/lang/Exception;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final g()Lroy;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget-object p0, Lrox;->a:Lroy;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final h(Ljava/lang/String;Lroy;Lrpd;)Lrpe;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lrou;->d(Ljava/lang/String;Lroy;ZLrpd;)Lrpe;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
