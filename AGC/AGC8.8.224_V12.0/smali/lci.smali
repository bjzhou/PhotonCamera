.class public final Llci;
.super Ljava/lang/Object;


# static fields
.field public static final a:Llfn;

.field public static final b:Llfn;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x31

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Llfn;->a([I)Llfn;

    move-result-object v0

    sput-object v0, Llci;->a:Llfn;

    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Llfn;->a([I)Llfn;

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Llfn;->a([I)Llfn;

    move-result-object v0

    sput-object v0, Llci;->b:Llfn;

    return-void

    nop

    :array_0
    .array-data 4
        0x8229
        0x8f94
        0x822d
        0x822e
        0x8232
        0x8231
        0x8234
        0x8233
        0x8236
        0x8235
        0x822b
        0x8f95
        0x822f
        0x8230
        0x8238
        0x8237
        0x823a
        0x8239
        0x823c
        0x823b
        0x8051
        0x8c41
        0x8d62
        0x8f96
        0x8c3a
        0x8c3d
        0x881b
        0x8815
        0x8d7d
        0x8d8f
        0x8d77
        0x8d89
        0x8d71
        0x8d83
        0x8058
        0x8c43
        0x8f97
        0x8057
        0x8056
        0x8059
        0x881a
        0x8814
        0x8d7c
        0x8d8e
        0x906f
        0x8d76
        0x8d88
        0x8d82
        0x8d70
    .end array-data

    :array_1
    .array-data 4
        0x8229
        0x8232
        0x8231
        0x8234
        0x8233
        0x8236
        0x8235
        0x822b
        0x8238
        0x8237
        0x823a
        0x8239
        0x823c
        0x823b
        0x8051
        0x8d62
        0x8058
        0x8c43
        0x8057
        0x8056
        0x8059
        0x8d7c
        0x8d8e
        0x906f
        0x8d76
        0x8d88
        0x8d82
        0x8d70
    .end array-data

    :array_2
    .array-data 4
        0x8229
        0x8f94
        0x822d
        0x822b
        0x8f95
        0x822f
        0x8051
        0x8c41
        0x8d62
        0x8f96
        0x8c3a
        0x8c3d
        0x881b
        0x8058
        0x8c43
        0x8f97
        0x8057
        0x8056
        0x8059
        0x881a
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Llci;->a:Llfn;

    invoke-virtual {v0}, Llfn;->b()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid GL sized format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x8058

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmoz;->f(ZLjava/lang/Object;)V

    iput v2, p0, Llci;->c:I

    return-void
.end method

.method public static a()Llci;
    .locals 1

    new-instance v0, Llci;

    invoke-direct {v0}, Llci;-><init>()V

    return-object v0
.end method

.method public static final b()Z
    .locals 1

    sget-object v0, Llci;->b:Llfn;

    invoke-virtual {v0}, Llfn;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Llci;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Llci;

    iget p1, p1, Llci;->c:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    const v0, 0x8058

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x8058

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
