.class final Lfno;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjy;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

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

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lfno;->a:Ljava/lang/String;

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
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    const-class p0, Ljava/io/InputStream;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final cG()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final d()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lfno;->b:Ljava/lang/Object;

    nop

    nop

    check-cast p0, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_0

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
.end method

.method public final f(Lfie;Lfjx;)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p2, p0}, Lfjx;->e(Ljava/lang/Exception;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    :try_start_0
    iget-object p1, p0, Lfno;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v0, "data:image"

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    const/16 v0, 0x2c

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    nop

    nop

    nop

    nop

    const/4 v1, -0x1

    nop

    if-eq v0, v1, :cond_1

    nop

    const/4 v1, 0x0

    nop

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    const-string v3, ";base64"

    nop

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    nop

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    nop

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Ljava/io/ByteArrayInputStream;

    nop

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lfno;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {p2, v0}, Lfjx;->b(Ljava/lang/Object;)V

    return-void

    nop

    nop

    nop

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    const-string p1, "Not a base64 image data URL."

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    const-string p1, "Missing comma in data URL."

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    const-string p1, "Not a valid image data URL."

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    :goto_6
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_2

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop
.end method

.method public final g()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop
.end method
