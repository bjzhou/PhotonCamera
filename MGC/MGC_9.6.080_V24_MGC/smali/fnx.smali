.class public final Lfnx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfoh;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[B)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfnx;->b:Ljava/lang/Object;

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

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Lfnx;->a:I

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
.end method

.method public constructor <init>(Landroid/content/Context;I[C)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lfnx;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lfnx;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfnx;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lfnx;->a:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/io/File;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p0, v1, :cond_0

    nop

    goto/32 :goto_23

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Lfic;->i(Landroid/net/Uri;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Lfnx;->a:I

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    if-ne p0, v1, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    :goto_9
    check-cast p1, Ljava/net/URL;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_a
    if-ne p0, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p1}, Lfic;->i(Landroid/net/Uri;)Z

    move-result p0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Lfic;->g(Landroid/net/Uri;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_10
    check-cast p1, [B

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x17

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_12
    return v2

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-ne p0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    :goto_16
    check-cast p1, Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1}, Lfic;->g(Landroid/net/Uri;)Z

    move-result p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_4

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    :goto_19
    if-ne p0, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    :goto_1a
    return v0

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    if-eqz p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1d
    return v2

    nop

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_20
    invoke-static {p1}, Lfic;->g(Landroid/net/Uri;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_22
    return v0

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return v0

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x5

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_29
    check-cast p1, Landroid/net/Uri;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2a
    if-nez p0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return v0

    nop

    nop

    :goto_2c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_c

    nop

    :goto_2e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_30
    check-cast p1, Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_31
    check-cast p1, Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_32
    return v0

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_34
    if-nez p0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_35
    if-nez p0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2e

    nop

    nop
.end method

.method public final synthetic b(Ljava/lang/Object;IILfjp;)Lhdu;
    .locals 4

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p2, Lhdu;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p2, p3, p0}, Lhdu;-><init>(Lfjl;Lfjy;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    return-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    :goto_6
    new-instance p2, Lhdu;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x2

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    :cond_2
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p3, p1}, Lfth;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p4, Lfnu;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_d
    iget v0, p0, Lfnx;->a:I

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    check-cast p1, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    check-cast p2, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0, p1, p2, p3, p4}, Lfoh;->b(Ljava/lang/Object;IILfjp;)Lhdu;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_11
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_12
    if-nez p1, :cond_3

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_3
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p4, Lfod;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_14
    return-object p2

    nop

    :goto_15
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p3, p1}, Lfth;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_17
    new-instance p4, Lfnj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_18
    invoke-direct {p3, p1}, Lfth;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_37

    nop

    nop

    :goto_19
    new-instance p4, Lfkq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lfnx;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_65

    nop

    :goto_1e
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p4, p0, p1}, Lfod;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto/32 :goto_30

    nop

    nop

    :goto_20
    return-object p2

    nop

    :goto_21
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_22
    invoke-static {p2, p3}, Lfic;->h(II)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0, p1}, Lfoh;->a(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p4, p1, p0, v1}, Lfnu;-><init>(Ljava/io/File;Lfnv;I)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance p4, Lfkp;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p2, Lhdu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_29
    new-instance v0, Lfny;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2c
    if-eqz p2, :cond_5

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2d
    new-instance p3, Lfth;

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

    :goto_2e
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p4, p1, p0}, Lfnj;-><init>([BLfni;)V

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_30
    invoke-direct {p2, p3, p4}, Lhdu;-><init>(Lfjl;Lfjy;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p2, p3, p0}, Lhdu;-><init>(Lfjl;Lfjy;)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_33
    new-instance p3, Lfth;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_2b

    nop

    :goto_35
    invoke-virtual {p4, p2}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object p2

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

    :goto_36
    invoke-static {p0, p1, p4}, Lfnu;->b(Landroid/content/Context;Landroid/net/Uri;Lfkr;)Lfnu;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_37
    iget-object p0, p0, Lfnx;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p0, v0, p2, p3, p4}, Lfoh;->b(Ljava/lang/Object;IILfjp;)Lhdu;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-object v3

    nop

    nop

    :goto_3a
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move-object p1, v0

    nop

    nop

    :goto_3c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p0, p0, Lfnx;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_40
    invoke-direct {p4, v0}, Lfkp;-><init>(Landroid/content/ContentResolver;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto :goto_3c

    nop

    :goto_42
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-ne v0, v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_44
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_45
    invoke-direct {p3, p1}, Lfth;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto :goto_3c

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {p1}, Lfnx;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_49
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {p1}, Lfnx;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_4c
    invoke-direct {p4, v0}, Lfkq;-><init>(Landroid/content/ContentResolver;)V

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-ne v0, v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const-wide/16 v0, -0x1

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_4f
    if-ne v0, v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_50
    if-nez p2, :cond_9

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_9
    goto/32 :goto_3e

    nop

    nop

    :goto_51
    invoke-direct {p3, p1}, Lfth;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_7e

    nop

    nop

    :goto_52
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v0, p0, Lfnx;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-nez p2, :cond_a

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_66

    nop

    nop

    :goto_55
    new-instance p2, Lhdu;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {p2, p3, p4}, Lhdu;-><init>(Lfjl;Lfjy;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_57
    new-instance p2, Lhdu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_58
    cmp-long p2, p2, v0

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

    :goto_59
    if-ne v0, v1, :cond_b

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_b
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_5a
    return-object p2

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_34

    nop

    nop

    :goto_5c
    invoke-direct {v0, p1}, Lfny;-><init>(Ljava/net/URL;)V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    return-object v3

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    return-object p2

    nop

    nop

    :goto_60
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_61
    check-cast p1, Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_62
    check-cast p1, Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_63
    invoke-direct {p2, p3, p4}, Lhdu;-><init>(Lfjl;Lfjy;)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_64
    return-object p0

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_66
    sget-object p2, Lfqs;->a:Lfjo;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    new-instance p3, Lfth;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_68
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object p0, p0, Lfnx;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_6c
    new-instance p3, Lfth;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6d
    check-cast p1, Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_6e
    const/4 v1, 0x5

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_6f
    new-instance p3, Lfth;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_70
    move-object p1, v3

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_71
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    check-cast p1, Landroid/net/Uri;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_75
    invoke-static {p2, p3}, Lfic;->h(II)Z

    move-result p2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_76
    check-cast p1, Ljava/net/URL;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_77
    const/16 v1, 0x2f

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_78
    return-object p2

    nop

    nop

    :goto_79
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7a
    if-ne v0, v2, :cond_c

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

    :cond_c
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const/4 v2, 0x1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_7c
    invoke-static {p0, p1, p4}, Lfnu;->b(Landroid/content/Context;Landroid/net/Uri;Lfkr;)Lfnu;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7d
    if-eqz v1, :cond_d

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object p0, p0, Lfnx;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7f
    if-nez v0, :cond_e

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_81
    if-eqz v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_82
    iget-object p0, p0, Lfnx;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_83
    check-cast p1, Ljava/lang/String;

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object p0, p0, Lfnx;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
