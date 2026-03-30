.class public final Lsgs;
.super Lsgt;
.source "PG"


# instance fields
.field private final c:Lsgr;


# direct methods
.method public constructor <init>(Lseg;ILsgr;)V
    .locals 0

    goto/32 :goto_e

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lseg;->d()Z

    move-result p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-char p1, p3, Lsgr;->G:C

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_8

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    :goto_7
    const/16 p1, 0x54

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    const/4 p2, 0x1

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

    :goto_a
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p0}, Lseg;->f(Ljava/lang/StringBuilder;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    iput-object p3, p0, Lsgs;->c:Lsgr;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    invoke-direct {p0, p1, p2}, Lsgt;-><init>(Lseg;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 p1, 0x74

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    const-string p2, "%"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    if-ne p2, p1, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lsgx;Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    :goto_5
    goto/16 :goto_21

    nop

    nop

    :goto_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p2, p1}, Lsgx;->c(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lseg;->d()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_c
    invoke-static {v0, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_e
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    iget-object p1, p1, Lsgx;->d:Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    instance-of v1, p2, Ljava/util/Calendar;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_18
    instance-of v1, p2, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x20

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    const/16 p0, 0x74

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v2, "%"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    :goto_1f
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_20
    const/16 p0, 0x54

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-char p0, v0, Lsgr;->G:C

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_25
    iget-object p0, p0, Lsgt;->b:Lseg;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p1, Lsgx;->d:Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_27
    iget-char p1, v0, Lsgr;->G:C

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lsgs;->c:Lsgr;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_29
    const-string v1, "%t"

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2a
    invoke-virtual {p0, v1}, Lseg;->f(Ljava/lang/StringBuilder;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2b
    instance-of v1, p2, Ljava/util/Date;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2c
    const/4 v2, 0x1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne v2, p0, :cond_4

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2f
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v0, Lsen;->a:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_2e

    nop

    nop

    nop
.end method
