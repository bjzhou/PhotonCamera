.class public final enum Liko;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Liko;

.field public static final enum b:Liko;

.field public static final enum c:Liko;

.field public static final enum d:Liko;

.field private static final synthetic f:[Liko;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Liko;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Liko;-><init>(Ljava/lang/String;II)V

    sput-object v0, Liko;->a:Liko;

    new-instance v1, Liko;

    const-string v3, "LANDSCAPE"

    const/4 v4, 0x1

    const/16 v5, 0x10e

    invoke-direct {v1, v3, v4, v5}, Liko;-><init>(Ljava/lang/String;II)V

    sput-object v1, Liko;->b:Liko;

    new-instance v3, Liko;

    const-string v5, "REVERSE_LANDSCAPE"

    const/4 v6, 0x2

    const/16 v7, 0x5a

    invoke-direct {v3, v5, v6, v7}, Liko;-><init>(Ljava/lang/String;II)V

    sput-object v3, Liko;->c:Liko;

    new-instance v5, Liko;

    const-string v7, "REVERSE_PORTRAIT"

    const/4 v8, 0x3

    const/16 v9, 0xb4

    invoke-direct {v5, v7, v8, v9}, Liko;-><init>(Ljava/lang/String;II)V

    sput-object v5, Liko;->d:Liko;

    const/4 v7, 0x4

    new-array v7, v7, [Liko;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Liko;->f:[Liko;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Liko;->e:I

    return-void
.end method

.method public static a(I)Liko;
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported orientation degrees: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    sget-object p0, Liko;->b:Liko;

    return-object p0

    :sswitch_1
    sget-object p0, Liko;->d:Liko;

    return-object p0

    :sswitch_2
    sget-object p0, Liko;->c:Liko;

    return-object p0

    :sswitch_3
    sget-object p0, Liko;->a:Liko;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public static b(Landroid/view/Display;Landroid/content/Context;)Liko;
    .locals 0

    invoke-static {p1, p0}, Ljji;->n(Landroid/content/Context;Landroid/view/Display;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Liko;->a:Liko;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Liko;->a:Liko;

    return-object p0

    :cond_1
    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    sget-object p0, Liko;->d:Liko;

    return-object p0

    :cond_2
    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    sget-object p0, Liko;->b:Liko;

    return-object p0

    :cond_3
    const/4 p1, 0x3

    if-ne p0, p1, :cond_4

    sget-object p0, Liko;->c:Liko;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown display rotation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Liko;)Z
    .locals 1

    sget-object v0, Liko;->a:Liko;

    invoke-virtual {p0, v0}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Liko;->d:Liko;

    invoke-virtual {p0, v0}, Liko;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static values()[Liko;
    .locals 1

    sget-object v0, Liko;->f:[Liko;

    invoke-virtual {v0}, [Liko;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liko;

    return-object v0
.end method


# virtual methods
.method public final c()Liko;
    .locals 3

    invoke-virtual {p0}, Liko;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unsupported orientation: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Liko;->a:Liko;

    return-object v0

    :pswitch_1
    sget-object v0, Liko;->b:Liko;

    return-object v0

    :pswitch_2
    sget-object v0, Liko;->c:Liko;

    return-object v0

    :pswitch_3
    sget-object v0, Liko;->d:Liko;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Liko;
    .locals 3

    invoke-virtual {p0}, Liko;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unsupported orientation: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Liko;->c:Liko;

    return-object v0

    :pswitch_1
    sget-object v0, Liko;->d:Liko;

    return-object v0

    :pswitch_2
    sget-object v0, Liko;->a:Liko;

    return-object v0

    :pswitch_3
    sget-object v0, Liko;->b:Liko;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
