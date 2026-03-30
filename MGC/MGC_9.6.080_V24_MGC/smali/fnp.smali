.class public final Lfnp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfoi;
.implements Lfnr;


# instance fields
.field private final a:Landroid/content/Context;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lfnp;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfnp;->a:Landroid/content/Context;

    nop

    goto/32 :goto_3

    nop

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
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-class p0, Landroid/graphics/drawable/Drawable;

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
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_9
    const-class p0, Landroid/content/res/AssetFileDescriptor;

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

    :goto_a
    const-class p0, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    iget p0, p0, Lfnp;->b:I

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
.end method

.method public final b(Lfom;)Lfoh;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    const v0, 0x16

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lfnp;->a:Landroid/content/Context;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lfns;

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

    nop

    nop

    :goto_5
    invoke-direct {p1, v1, p0, v0}, Lfns;-><init>(Landroid/content/Context;Lfnr;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    if-ne p1, v1, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1, v1, p0, v0}, Lfns;-><init>(Landroid/content/Context;Lfnr;I)V

    goto/32 :goto_f

    nop

    nop

    :goto_8
    iget p1, p0, Lfnp;->b:I

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

    :goto_9
    const/4 v0, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    iget-object v1, p0, Lfnp;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lfnp;->a:Landroid/content/Context;

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

    :goto_c
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    new-instance p1, Lfns;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x11

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

    :goto_12
    invoke-direct {p1, v1, p0, v0}, Lfns;-><init>(Landroid/content/Context;Lfnr;I)V

    goto/32 :goto_17

    nop

    nop

    :goto_13
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    return-object p1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p1, Lfns;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_1b
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final synthetic c(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lfnp;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v0, p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p0, p3, p1}, Lfqw;->a(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

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

    :goto_8
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lfnp;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

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
.end method

.method public final synthetic d(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne p0, v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    check-cast p1, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    iget p0, p0, Lfnp;->b:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p1, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
