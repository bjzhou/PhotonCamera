.class public final synthetic Ljug;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrsv;


# instance fields
.field public final synthetic a:J

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p1, p0, Ljug;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Ljug;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_2f

    nop

    nop

    :goto_0
    if-ne v0, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_1
    return v2

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    const/16 p1, 0xa45

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lpge;->close()V

    goto/32 :goto_20

    nop

    nop

    :goto_5
    sget-object p0, Ljuj;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p1, Llpp;->a:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    check-cast p1, Lpjo;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_8
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_3e

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    check-cast p1, Lpjo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return v1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Lpjo;->f()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p1, Landroid/util/Pair;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_10
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0, p1}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    if-gtz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_15
    cmp-long p0, v5, v3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez p0, :cond_3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    :goto_17
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return v1

    nop

    :goto_19
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v3, :cond_5

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-wide v3, p0, Ljug;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1d
    const v1, 0x19

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p0, Lscz;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_22
    iget-wide p0, p0, Ljug;->a:J

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_25
    sub-long/2addr p0, v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, p1}, Lj$/time/Duration;->compareTo(Lj$/time/Duration;)I

    move-result p0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_27
    move v1, v2

    nop

    :goto_28
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-wide p0, p1, Lpgi;->b:J

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Lpjo;->b()Lpgi;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2b
    iget-wide v5, v0, Lpgi;->b:J

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    cmp-long p0, p0, v3

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2e
    invoke-interface {p0, p1, v0, v1}, Lscz;->u(Ljava/lang/String;J)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0x1e

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

    :goto_30
    sget-object v0, Llpp;->a:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_35

    nop

    nop

    :goto_33
    return v1

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Lpjo;->a()Lpge;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Lpjo;->b()Lpgi;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1}, Lpjo;->b()Lpgi;

    move-result-object p1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-wide v0, v0, Lpgi;->b:J

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3a
    iget-wide v3, p0, Ljug;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3b
    const-string p1, "The frame at %d is null!"

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast p1, Lpjo;

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3d
    cmp-long p0, p0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3e
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3f
    if-nez p1, :cond_8

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_42
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_9
    goto/32 :goto_23

    nop

    :goto_43
    if-eqz p0, :cond_a

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5

    nop

    nop

    :goto_44
    return v1

    nop

    :goto_45
    goto/32 :goto_a

    nop

    nop

    :goto_46
    if-eqz p0, :cond_b

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-wide v3, p0, Ljug;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_48
    if-nez p1, :cond_c

    nop

    goto/32 :goto_c

    nop

    :cond_c
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_4a
    iget v0, p0, Ljug;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4b
    return v2

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4e
    iget-wide p0, p1, Lpgi;->b:J

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_4f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method
