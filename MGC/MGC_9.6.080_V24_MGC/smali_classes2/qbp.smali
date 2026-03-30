.class public final synthetic Lqbp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrsk;


# instance fields
.field public final synthetic a:J

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-wide p1, p0, Lqbp;->a:J

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lqbp;->b:I

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, v2, Lsre;->e:Z

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v1, Lsre;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4c

    nop

    nop

    :goto_3
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_1
    goto/32 :goto_52

    nop

    nop

    :goto_4
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide p0, p0, Lqbp;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v4, v5, v2, v3}, Lqau;->b(JJ)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lsre;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_8
    move-object v2, v1

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_9
    iget-wide v5, p1, Lpxa;->c:J

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_58

    nop

    nop

    :goto_b
    check-cast p1, Ljava/lang/Long;

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

    :goto_c
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    check-cast v1, Lsre;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    iget-wide v0, p0, Lqbp;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_12
    const-string v6, "Bad sample interval (1 percent cohort will not log): %d"

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_13
    invoke-static {v5, v6, v0, v1}, Lqau;->b(JJ)Z

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_15
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_16
    or-int/lit8 v6, v6, 0x2

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_17
    cmp-long p0, v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Ltng;->a(Ltmm;)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_1a
    iput-wide v4, v1, Lsre;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_1b
    const/4 p0, 0x0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_1e
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_21
    iget v6, v1, Lsre;->b:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_23
    iget v5, v1, Lsre;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-long v4, v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_25
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    :goto_26
    iget-object p1, v0, Ltkb;->b:Ltkg;

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

    nop

    :goto_27
    iget v3, v2, Lsre;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast p1, Lpxa;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_29
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    :goto_2a
    goto/32 :goto_4d

    nop

    nop

    :goto_2b
    check-cast p1, Lsre;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2c
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2e
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v1, p1, Lsre;->b:I

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_30
    iput v1, p1, Lsre;->b:I

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v0, p0, Lqbp;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_32
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v0, Lsre;->a:Lsre;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v1, :cond_7

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_3b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3d
    invoke-static {v6, v5}, Lqbq;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_2a

    nop

    :goto_40
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_41
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move p0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_43
    iput v5, v1, Lsre;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_45
    iput v3, v2, Lsre;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_46
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_48
    or-int/lit8 v3, v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_1c

    nop

    nop

    :goto_4a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iput v6, v1, Lsre;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    return-object p0

    nop

    nop

    :goto_4e
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4f
    if-eqz v1, :cond_9

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_50
    iput-boolean v4, v1, Lsre;->c:Z

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_51
    iget-object v1, v0, Ltkb;->b:Ltkg;

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

    nop

    :goto_52
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_54
    check-cast v2, Lsre;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_55
    iget-wide v4, p1, Lpxa;->c:J

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

    :goto_56
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_57
    iput-boolean p0, p1, Lsre;->f:Z

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_58
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_59
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_5a
    or-int/2addr v5, v4

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_5b
    iget-object v1, p1, Lpxa;->d:Ltmm;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

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

    nop

    :goto_5d
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_5f
    or-int/lit8 v1, v1, 0x8

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_60
    sget-object v1, Ltmm;->a:Ltmm;

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_62
    const-wide/16 v2, 0x64

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_63
    div-long/2addr v0, p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop
.end method
