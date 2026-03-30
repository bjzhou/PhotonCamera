.class final Lmlm;
.super Lke;
.source "PG"


# instance fields
.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lhoh;)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    goto/32 :goto_25

    nop

    nop

    :goto_2
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

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

    :goto_5
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    :goto_7
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

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

    :goto_9
    check-cast p2, [Ljava/lang/String;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_c
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

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

    :goto_d
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_31

    nop

    nop

    :goto_14
    const p2, 0x7f1406c7

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    new-instance v1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    iput-object p2, p0, Lmlm;->c:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2, v1}, Lhoh;->o(Lhmn;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const p2, 0x7f1406be

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_14

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p1, p0, Lmlm;->d:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-array p2, p1, [Ljava/lang/String;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1e
    const v2, 0x7f030020

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1f
    check-cast p1, [Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    const v2, 0x7f03001f

    nop

    nop

    goto/32 :goto_2

    nop

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

    goto/32 :goto_29

    nop

    nop

    :goto_22
    invoke-direct {p0}, Lke;-><init>()V

    goto/32 :goto_10

    nop

    nop

    :goto_23
    if-nez p2, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 p1, 0x0

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

    :goto_25
    sget-object v2, Lhnw;->c:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    const v1, 0x7f03001e

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p2, v2}, Lhoh;->p(Lhmn;)Z

    move-result p2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2a
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2c
    new-array p1, p1, [Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_2e
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

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

    nop

    :goto_2f
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_30
    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_7

    nop

    nop

    :goto_32
    sget-object v1, Lhmq;->bT:Lhmn;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    array-length p0, p0

    nop

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
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lmlm;->c:[Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic c(Landroid/view/ViewGroup;I)Llb;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    new-instance p0, Landroid/widget/TextView;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lmll;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-object p1

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, p0}, Lmll;-><init>(Landroid/widget/TextView;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic g(Llb;I)V
    .locals 6

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    invoke-direct {v3, v0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aget-object v2, v2, p2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v3, v0, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Lmlm;->d:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, p0, Lmlm;->c:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    iget-object v2, p1, Lmll;->s:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    :goto_b
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

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

    :goto_d
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v2, 0xa

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v4, 0x21

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    const v0, 0x1a

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

    :goto_12
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_13
    new-instance v1, Landroid/text/SpannableStringBuilder;

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

    :goto_14
    iget-object v1, p0, Lmlm;->c:[Ljava/lang/String;

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

    :goto_15
    const v4, 0x7f1501b3

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
    iget-object p1, p1, Lmll;->s:Landroid/widget/TextView;

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

    nop

    :goto_17
    const v5, 0x7f1501b2

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

    nop

    :goto_18
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_19
    check-cast p1, Lmll;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1a
    aget-object v1, v1, p2

    nop

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

    :goto_1b
    invoke-virtual {v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_1c
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

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

    :goto_1d
    iget-object p0, p0, Lmlm;->d:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1e
    aget-object v2, v2, p2

    nop

    nop

    goto/32 :goto_1c

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

    goto/32 :goto_27

    nop

    nop

    :goto_20
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_21
    aget-object p0, p0, p2

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

    :goto_22
    invoke-virtual {v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_28
    return-void

    nop

    :goto_29
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v2, 0x7f14061d

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p1, Lmll;->s:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method
