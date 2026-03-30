.class final synthetic Lfil;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xd

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-array v0, v0, [I

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

    :goto_4
    new-array v4, v4, [I

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

    :goto_5
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v4, Lfil;->b:[I

    nop

    nop

    nop

    nop

    sget-object v5, Lfie;->a:Lfie;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lfie;->ordinal()I

    move-result v5

    nop

    nop

    nop

    nop

    aput v3, v4, v5

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    array-length v4, v4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v2, Lfie;->d:Lfie;

    nop

    nop

    nop

    invoke-virtual {v2}, Lfie;->ordinal()I

    move-result v2

    nop

    nop

    nop

    aput v1, v0, v2

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    goto/32 :goto_c

    nop

    nop

    :goto_8
    const v0, 0x19

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    array-length v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lfil;->b:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x2

    nop

    nop

    :try_start_2
    sget-object v2, Lfil;->b:[I

    nop

    nop

    nop

    sget-object v3, Lfie;->c:Lfie;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lfie;->ordinal()I

    move-result v3

    nop

    nop

    nop

    aput v0, v2, v3

    nop

    nop
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

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

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    sput-object v4, Lfil;->a:[I

    nop

    nop

    :try_start_3
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    aput v1, v4, v5

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lfil;->a:[I

    nop

    nop

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    invoke-virtual {v4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v4

    nop

    nop

    nop

    nop

    aput v0, v1, v4

    nop
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lfil;->a:[I

    nop

    nop

    nop

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lfil;->a:[I

    nop

    nop

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    nop

    aput v3, v0, v1

    nop

    nop
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lfil;->a:[I

    nop

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    nop

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lfil;->a:[I

    nop

    nop

    nop

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x6

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lfil;->a:[I

    nop

    nop

    nop

    nop

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    nop

    const/4 v2, 0x7

    nop

    nop

    aput v2, v0, v1

    nop

    nop
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lfil;->a:[I

    nop

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    nop

    nop

    nop

    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Lfie;->values()[Lfie;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_14
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    const/4 v2, 0x3

    nop

    nop

    nop

    :try_start_b
    sget-object v3, Lfil;->b:[I

    nop

    sget-object v4, Lfie;->b:Lfie;

    nop

    nop

    invoke-virtual {v4}, Lfie;->ordinal()I

    move-result v4

    nop

    nop

    nop

    nop

    aput v2, v3, v4

    nop

    nop

    nop
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method
