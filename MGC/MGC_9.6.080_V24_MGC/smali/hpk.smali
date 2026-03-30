.class public Lhpk;
.super Lhoz;
.source "PG"


# static fields
.field private static final h:Lsdb;


# instance fields
.field public g:Lrss;

.field private final i:Lmlc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lhpk;->h:Lsdb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const-string v0, "hpk"

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

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

.method public constructor <init>(Landroid/content/Context;Lhpa;Lggl;Lmlc;Llxp;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3, p5}, Lhoz;-><init>(Landroid/content/Context;Lhpa;Lggl;Llxp;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhpk;->g:Lrss;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lhpk;->i:Lmlc;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lrss;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4
    const v2, 0x7f1404cf

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Landroid/widget/ImageView;->isClickable()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    return-object p1

    nop

    :goto_c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_10
    const v1, 0x7f0b02aa

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_11
    iget-boolean v1, v0, Ljtr;->g:Z

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Lhpk;->a:Lj$/time/format/DateTimeFormatter;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_33

    nop

    nop

    :goto_15
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_17
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lhpk;->d:Lggl;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lhoz;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2c

    nop

    nop

    :goto_1f
    iget-object p2, v0, Lhoy;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_20
    iget-object p2, v0, Lhoy;->c:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_21
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, p2}, Lhoz;->j(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

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

    :goto_23
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_26
    goto/16 :goto_51

    nop

    :goto_27
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_28
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p2, v0, Lhoy;->c:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p2, v0, Lhoy;->c:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lhoz;->e:Ljtr;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2d
    const v2, 0x7f1404b4

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p0}, Lggl;->h()Lj$/time/Instant;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2f
    invoke-static {p1}, Lhpk;->k(Landroid/view/View;)Lhoy;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_30
    if-eqz v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_31
    const v2, 0x7f1404df

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_32
    const v0, 0x7f140389

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_33
    iget-boolean v0, v0, Ljtr;->h:Z

    nop

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

    :goto_34
    invoke-virtual {v0, v2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, p1}, Lhoz;->l(Landroid/view/View;)V

    goto/32 :goto_3f

    nop

    nop

    :goto_37
    if-nez p2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-boolean v1, v0, Ljtr;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3a
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p2, p0, Lhpk;->e:Ljtr;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_3d
    invoke-static {p1}, Lhpk;->k(Landroid/view/View;)Lhoy;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_7
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p2, v0, Lhoy;->a:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {v0}, Lggl;->k()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p2}, Lggm;->ordinal()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_45
    sget-object p2, Lggm;->b:Lggm;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_46
    if-eqz v0, :cond_8

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, p0, Lhoz;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_49
    check-cast p1, Landroid/view/View;

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_4a
    const v0, 0x8

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_5

    nop

    :goto_4c
    goto/32 :goto_4

    nop

    nop

    :goto_4d
    iget-object v0, p0, Lhpk;->d:Lggl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move-object v0, p1

    nop

    :goto_51
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-boolean p2, p2, Ljtr;->h:Z

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_54
    goto/32 :goto_0

    nop

    nop
.end method

.method public final c()Lggm;
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

    nop

    nop

    :goto_1
    sget-object p0, Lggm;->b:Lggm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(II)Lqei;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    :goto_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Lggl;->c()Landroid/net/Uri;

    move-result-object p2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lhoz;->d:Lggl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lmlc;->b(Llxm;)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, p2, v1, p1, p0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Lqei;-><init>(Lrss;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    return-object p1

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_d
    new-instance p0, Lqei;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, p1, p2}, Lpck;-><init>(II)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lhpk;->i:Lmlc;

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

    :goto_12
    const v0, 0x14

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

    :goto_13
    invoke-virtual {p0, p1}, Lmlc;->a(Llxm;)Landroid/graphics/Bitmap;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Lpck;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    new-instance p1, Lqei;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    sget-object p1, Lhpk;->h:Lsdb;

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

    :goto_1a
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Lggl;->d()Llxm;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0}, Lggl;->k()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    return-object p1

    nop

    :goto_1f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_22
    const/16 v1, 0x453

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_23
    if-lez v0, :cond_2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    :goto_24
    const-string v0, "Failed to generate thumbnail for %s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p2}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p2

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

    :goto_26
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p1, p2, p0}, Lqei;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1e

    nop

    nop

    :goto_29
    invoke-interface {v0}, Lggl;->c()Landroid/net/Uri;

    :try_start_0
    iget-object p1, p0, Lhpk;->c:Lhpa;

    nop

    invoke-virtual {p1}, Lhpa;->a()Lfim;

    move-result-object p1

    nop

    nop

    iget-object p0, p0, Lhpk;->c:Lhpa;

    nop

    invoke-static {v0}, Lhpk;->n(Lggl;)Lfjl;

    move-result-object p2

    nop

    invoke-virtual {p0, p2, v1}, Lhpa;->c(Lfjl;Lpck;)Lfsr;

    move-result-object p0

    nop

    nop

    invoke-virtual {p1, p0}, Lfim;->b(Lfsj;)Lfim;

    move-result-object p0

    nop

    nop

    invoke-interface {v0}, Lggl;->c()Landroid/net/Uri;

    move-result-object p1

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lfim;->e(Landroid/net/Uri;)Lfim;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lfim;->k()Lfsp;

    move-result-object p0

    nop

    invoke-virtual {p0}, Lfsp;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Landroid/graphics/Bitmap;

    nop

    nop

    invoke-interface {v0}, Lggl;->c()Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    new-instance p1, Lqei;

    nop

    nop

    nop

    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    invoke-direct {p1, p0}, Lqei;-><init>(Lrss;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final m(Lhoy;)V
    .locals 7

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v4, v3}, Lfsj;->z(Lfjl;)Lfsj;

    move-result-object v3

    nop

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

    :goto_1
    invoke-static {}, Lhpa;->e()Lpck;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_2
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Lggl;->c()Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

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

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v4, v2, Lpck;->a:I

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Lggl;->k()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lhpk;->c:Lhpa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_a
    invoke-static {v2}, Lhpk;->n(Lggl;)Lfjl;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-double v4, v4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_28

    nop

    nop

    :goto_d
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v2, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lhpk;->c:Lhpa;

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

    :goto_12
    const v0, 0x1f

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

    nop

    :goto_13
    iget-object v2, p0, Lhpk;->d:Lggl;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Lfim;->e(Landroid/net/Uri;)Lfim;

    move-result-object p0

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

    nop

    :goto_16
    invoke-interface {v2}, Lggl;->i()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

    nop

    :goto_18
    iget-object v0, p0, Lhpk;->d:Lggl;

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

    :goto_19
    check-cast v2, Lfsr;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v3, Lfrj;->b:Lfjo;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v2}, Lfsj;->v(Landroid/graphics/drawable/Drawable;)Lfsj;

    move-result-object v1

    nop

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

    nop

    :goto_1c
    iget-object v2, v2, Lhpa;->a:Lpck;

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

    :goto_1d
    iget-object v2, p0, Lhpk;->c:Lhpa;

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

    :goto_1e
    invoke-static {v3}, Lhpk;->n(Lggl;)Lfjl;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

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

    goto/32 :goto_51

    nop

    nop

    :goto_20
    check-cast v1, Lfsr;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_21
    sget-object p0, Lhpk;->h:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2}, Lhpa;->b()Lfim;

    move-result-object v2

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v3, Lfsr;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v3}, Lfsj;->L()Lfsj;

    move-result-object v3

    nop

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

    :goto_2a
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lhpa;->b()Lfim;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 v0, 0x454

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v3}, Lfsj;->q()Lfsj;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v0, "renderThumbnail: No placeholder. Use default resource."

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/32 :goto_4d

    nop

    nop

    :goto_30
    invoke-virtual {p0, v2}, Lfim;->b(Lfsj;)Lfim;

    move-result-object p0

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v2, p0, Lhpk;->g:Lrss;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_33
    invoke-virtual {v1, v2, v3}, Lhpa;->c(Lfjl;Lpck;)Lfsr;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_36
    iget-object v0, p0, Lhoz;->d:Lggl;

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

    nop

    :goto_37
    invoke-virtual {p0, v0}, Lfim;->e(Landroid/net/Uri;)Lfim;

    move-result-object p0

    nop

    :goto_38
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_39
    sget-object v3, Lpsz;->b:Lpsz;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v2, p0, Lhpk;->g:Lrss;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lhpk;->c:Lhpa;

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

    :goto_3c
    if-nez v2, :cond_1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v3, Lfsr;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3e
    check-cast v3, Lfsr;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3f
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast v2, Lfsr;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_41
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v2, v1}, Lfim;->b(Lfsj;)Lfim;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Lhpa;->b()Lfim;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_44
    iget-object v2, p0, Lhpk;->d:Lggl;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_45
    iget v4, v2, Lhpa;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p1, p1, Lhoy;->a:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v3, v4, v2}, Lfsj;->u(II)Lfsj;

    move-result-object v2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, p0, Lhpk;->d:Lggl;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v1, Lfsr;

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v2, v3, v4}, Lfsj;->y(Lfjo;Ljava/lang/Object;)Lfsj;

    move-result-object v2

    nop

    nop

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

    :goto_4c
    invoke-virtual {p0, v1}, Lfim;->b(Lfsj;)Lfim;

    move-result-object p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v3, p0, Lhpk;->f:Lpck;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_50
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_51
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_3
    goto/32 :goto_c

    nop

    :goto_52
    invoke-virtual {v1, p0}, Lfim;->g(Lfim;)Lfim;

    move-result-object p0

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_53
    iget-object v2, p0, Lhpk;->c:Lhpa;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object p1, p1, Lhoy;->a:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct {v4}, Lfsr;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_56
    iget-object p0, p0, Lhpk;->i:Lmlc;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0, p1}, Lfim;->j(Landroid/widget/ImageView;)Lftb;

    goto/32 :goto_27

    nop

    nop

    :goto_58
    invoke-virtual {p0, v0}, Lmlc;->b(Llxm;)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_4
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5a
    new-instance v4, Lfsr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0, v0}, Lmlc;->a(Llxm;)Landroid/graphics/Bitmap;

    move-result-object v1

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_5c
    const p0, 0x7f060884

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_5d
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3f

    nop

    nop

    :goto_5e
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-interface {v0}, Lggl;->d()Llxm;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_60
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v1, p0}, Lnzk;->ai(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    nop

    :goto_62
    goto/32 :goto_2f

    nop

    nop

    :goto_63
    const v1, 0x14

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget v2, v2, Lpck;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_65
    invoke-static {v2, v4, v5, v6}, Lhpa;->d(Lpck;DLpck;)Lpck;

    move-result-object v2

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p0, v0}, Lfim;->e(Landroid/net/Uri;)Lfim;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v4, 0x1

    nop

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

    :goto_68
    invoke-virtual {v1}, Lfsj;->p()Lfsj;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_69
    invoke-static {v2}, Lpsz;->a(Ljava/lang/String;)Lpsz;

    move-result-object v2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v3, p0, Lhpk;->d:Lggl;

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

    nop

    :goto_6b
    if-eq v2, v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhpk;->d:Lggl;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const-string v0, "PhotoItem: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

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

    :goto_5
    return-object p0

    nop

    nop
.end method
