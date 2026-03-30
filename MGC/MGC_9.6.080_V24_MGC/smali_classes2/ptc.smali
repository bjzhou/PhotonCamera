.class public final Lptc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lptk;


# instance fields
.field private final a:Lpuq;


# direct methods
.method public constructor <init>(Lpuq;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lptc;->a:Lpuq;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lptp;Lptf;)Lpth;
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v4, p1, Lptp;->a:Lpti;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1
    invoke-direct {v3, p1, v2, v1, p2}, Lpts;-><init>(Lptp;Landroid/content/ContentResolver;Landroid/content/ContentValues;Lptf;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v5, p1, Lptp;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xb

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lptp;->c()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-static {v1}, La;->au(Z)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, p1, Lptp;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_7
    invoke-direct {v0, p0, v3}, Lptq;-><init>(Lpuq;Lpts;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    iget-object v2, p2, Lptf;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, p1, Lptp;->e:Ljava/lang/String;

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

    :goto_e
    iget-object v2, p2, Lptf;->i:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_f
    invoke-static {p1, p2}, Lptu;->l(Lptp;Lptf;)Lptu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_10
    const-string v5, "%s.%s"

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

    :goto_11
    iget-object p0, p0, Lptc;->a:Lpuq;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_13
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    iget v3, p2, Lptf;->h:I

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

    :goto_17
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, p1, Lptp;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1a
    iget-object v4, p1, Lptp;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p2, Lptf;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Lptq;

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

    :goto_1d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, p0, p1}, Lptr;-><init>(Lpuq;Lpth;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    :goto_20
    const-string v4, "%s/%s"

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_21
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, p1, Lptp;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lptc;->a:Lpuq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_25
    iget-object v2, p2, Lptf;->f:Ljava/lang/String;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_26
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v5, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

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

    :goto_28
    goto/32 :goto_2e

    nop

    nop

    :goto_29
    iget v3, p2, Lptf;->k:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2a
    const v1, 0x2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2c
    iget-object v2, p2, Lptf;->j:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2d
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_40

    nop

    nop

    :goto_2f
    iget v3, p2, Lptf;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v2}, Lpuq;->aR(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_33
    iget-object v2, p2, Lptf;->g:Ljava/lang/String;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_34
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Lpti;->b()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v3, p2, Lptf;->a:Landroid/content/Context;

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

    :goto_38
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance v3, Lpts;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3b
    return-object v0

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_28

    nop

    nop

    :goto_3d
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3f
    iget-object v2, p2, Lptf;->j:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p1, Lptp;->a:Lpti;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_42
    new-instance v0, Lptr;

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

    :goto_43
    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v2}, Lpuq;->aS(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v4, v3}, Lpti;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_48
    new-instance v1, Landroid/content/ContentValues;

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

    nop
.end method

.method public final b(Lptf;)Lptj;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance p0, Lptb;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Lptb;-><init>(Lptf;)V

    goto/32 :goto_1

    nop

    nop
.end method
