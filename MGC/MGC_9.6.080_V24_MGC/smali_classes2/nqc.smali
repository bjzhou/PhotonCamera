.class public final Lnqc;
.super Lbo;
.source "PG"


# instance fields
.field public a:Lnra;

.field public b:Lrss;

.field private c:Lnqy;


# direct methods
.method public constructor <init>()V
    .locals 1

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

    :goto_1
    iput-object v0, p0, Lnqc;->b:Lrss;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lbo;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static c(Landroid/os/Bundle;Landroid/net/Uri;)Lnqc;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lnqc;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {p1}, Lnqc;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Lbo;->setArguments(Landroid/os/Bundle;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "video_uri"

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lnqc;->c:Lnqy;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Lnqd;->a()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v3, Loyb;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v3, v8, v4}, Lmqp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_7
    move-object v2, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lbo;->n:Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v3, v8, v1}, Lnqz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p2, Lnqg;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v3, 0x7f0b0505

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v3, p0, Lnqc;->a:Lnra;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, v8, Lnra;->k:Landroid/widget/SeekBar;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_e
    iget-object v2, p0, Lnqc;->a:Lnra;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    const-string v3, "video_uri"

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Lnqc;->c:Lnqy;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v3, 0x7f0b04ff

    nop

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

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    iget-object v3, p0, Lnqc;->a:Lnra;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, v8, Lnra;->d:Landroid/view/View;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v2, Landroid/widget/VideoView;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_16
    move-object v6, v0

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_17
    iget-object v2, v8, Lnra;->g:Landroid/widget/ImageButton;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p3, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    nop

    :goto_19
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_1b
    const v0, 0x7f0e0171

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v2, v8, Lnra;->g:Landroid/widget/ImageButton;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p2, v0}, Lnqg;-><init>(Ltxm;)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v3, "auto_loop_enabled"

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_1f
    invoke-direct {v3, v8, v4}, Lmqp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, v2, Lnra;->f:Landroid/widget/VideoView;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v3, 0x7f0b0501

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_22
    iget-object v2, v8, Lnra;->d:Landroid/view/View;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v3, Lgko;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_24
    check-cast v2, Landroid/widget/ImageButton;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_25
    move v7, v1

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_26
    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v2, v8, Lnra;->h:Landroid/widget/ImageButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v3, Lmqp;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_2b
    iput-object v2, v8, Lnra;->f:Landroid/widget/VideoView;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_2c
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v2, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_2f
    iput-object v2, v8, Lnra;->k:Landroid/widget/SeekBar;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v3, v2}, Loyb;-><init>(Lnra;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct/range {v2 .. v7}, Lnra;-><init>(Lnqy;Lnqg;Lnqt;Landroid/view/View;Z)V

    goto/32 :goto_44

    nop

    nop

    :goto_32
    invoke-direct {v0}, Lnql;-><init>()V

    goto/32 :goto_5e

    nop

    nop

    :goto_33
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Lnqu;->a()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v3, v2}, Lnra;->b(Landroid/graphics/Rect;)V

    :goto_36
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Lnqq;->b()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v2, v8, Lnra;->d:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v3, Lnqz;

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

    :goto_3a
    invoke-direct {v3, v8, v5, v4}, Lgko;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v3, 0x7f0b0504

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_19

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_3e
    iget-object v2, p0, Lbo;->n:Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eqz p3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/16 v4, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_42
    new-instance v3, Lmqp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_43
    iget-object v3, p0, Lnqc;->b:Lrss;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_44
    iput-object v8, p0, Lnqc;->a:Lnra;

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_45
    iget-object v2, v8, Lnra;->f:Landroid/widget/VideoView;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v2, p0, Lbo;->n:Landroid/os/Bundle;

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

    :goto_47
    iget-object p0, p0, Lnqc;->c:Lnqy;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_49
    const v3, 0x7f0b0506

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4a
    new-instance v3, Lmqp;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v2, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0, v2, v3}, Lnqq;->e(Lnra;Loyb;)V

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_4d
    move v8, p3

    nop

    :goto_4e
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {v0, p0, v2}, Lhuq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_52
    move-object v6, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_53
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v2, v8, Lnra;->d:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_55
    new-instance v0, Lhuq;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_57
    if-eqz p3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_59
    iget-object v2, v8, Lnra;->d:Landroid/view/View;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v2, v8, Lnra;->h:Landroid/widget/ImageButton;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_5b
    invoke-virtual {p3, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_5c
    const-string v5, "videoplayer_playing_state"

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const v3, 0x7f0b0502

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v2, p0, Lbo;->n:Landroid/os/Bundle;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5f
    const v3, 0x7f0b04fe

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v2, v8, Lnra;->d:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_61
    iget-object v2, v8, Lnra;->d:Landroid/view/View;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_63
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_64
    const-string v3, "no_seek_bar"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_65
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    check-cast v4, Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iput-object v2, v8, Lnra;->l:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v2, v8, Lnra;->d:Landroid/view/View;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_69
    check-cast v2, Landroid/widget/ImageButton;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6a
    invoke-direct {v3, v8, v5}, Lmqp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-direct {p2}, Lnqp;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast v2, Landroid/widget/SeekBar;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_6d
    goto/32 :goto_5

    nop

    :goto_6e
    const v3, 0x7f0b04fb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_6f
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

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

    :goto_70
    const-string v5, "videoplayer_position"

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

    :goto_71
    iget-object v2, p0, Lnqc;->a:Lnra;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v2, v8, Lnra;->d:Landroid/view/View;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    move-object v5, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_75
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iput-object v2, v8, Lnra;->o:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_77
    const/16 v5, 0x14

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_78
    const/16 v4, 0x13

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_79
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_7a
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iput-object v2, v8, Lnra;->i:Landroid/widget/TextView;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_7d
    iget-object v3, p0, Lnqc;->c:Lnqy;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7e
    move v8, v1

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_80
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_81
    move-object v4, p2

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual/range {v2 .. v9}, Lnqu;->k(Lnra;Landroid/net/Uri;Lnqg;Lnqt;IZZ)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_83
    new-instance p2, Lnqp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v2, p0, Lnqc;->b:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    move-object v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    new-instance v8, Lnra;

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v2, v8, Lnra;->f:Landroid/widget/VideoView;

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iput-object v2, v8, Lnra;->j:Landroid/widget/TextView;

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

    :goto_8a
    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setWillNotDraw(Z)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    new-instance v0, Lnql;

    nop

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

    :goto_8c
    check-cast v2, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_8e
    const-string v3, "video_view_padding"

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_8f
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_90
    const/4 v2, 0x7

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_91
    const v1, 0xe

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v0}, Lnqq;->a()V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_93
    move-object v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_94
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    :goto_96
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    if-nez v2, :cond_4

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_98
    goto/16 :goto_4e

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_5c

    nop

    nop
.end method

.method public final onPause()V
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
    invoke-virtual {p0}, Lnqu;->d()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Lbo;->onPause()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnqc;->c:Lnqy;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onResume()V
    .locals 0

    goto/32 :goto_1

    nop

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

    nop

    :goto_1
    invoke-super {p0}, Lbo;->onResume()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnqc;->c:Lnqy;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lnqu;->j()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/32 :goto_10

    nop

    nop

    :goto_1
    iget-object v0, p0, Lnqc;->a:Lnra;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    const-string v1, "videoplayer_playing_state"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Lnra;->f:Landroid/widget/VideoView;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    const v0, 0xa

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    iget-object p0, p0, Lnra;->f:Landroid/widget/VideoView;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    const-string v0, "videoplayer_position"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lnqc;->a:Lnra;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method
