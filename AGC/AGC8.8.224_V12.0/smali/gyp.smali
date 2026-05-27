.class public final enum Lgyp;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lgyp;

.field public static final enum b:Lgyp;

.field public static final enum c:Lgyp;

.field public static final enum d:Lgyp;

.field public static final enum e:Lgyp;

.field private static final synthetic g:[Lgyp;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lgyp;

    const-string v1, "ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgyp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgyp;->a:Lgyp;

    new-instance v1, Lgyp;

    const-string v3, "ON_LOCKED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgyp;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgyp;->b:Lgyp;

    new-instance v3, Lgyp;

    const-string v5, "OFF_NEAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgyp;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgyp;->c:Lgyp;

    new-instance v5, Lgyp;

    const-string v7, "OFF_FAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgyp;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgyp;->d:Lgyp;

    new-instance v7, Lgyp;

    const-string v9, "OFF_INFINITY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lgyp;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgyp;->e:Lgyp;

    const/4 v9, 0x5

    new-array v9, v9, [Lgyp;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lgyp;->g:[Lgyp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgyp;->f:I

    return-void
.end method

.method public static a(I)Lgyp;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lgyp;->a:Lgyp;

    return-object p0

    :pswitch_0
    sget-object p0, Lgyp;->e:Lgyp;

    return-object p0

    :pswitch_1
    sget-object p0, Lgyp;->d:Lgyp;

    return-object p0

    :pswitch_2
    sget-object p0, Lgyp;->c:Lgyp;

    return-object p0

    :pswitch_3
    sget-object p0, Lgyp;->b:Lgyp;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lgyp;
    .locals 1

    sget-object v0, Lgyp;->g:[Lgyp;

    invoke-virtual {v0}, [Lgyp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgyp;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    sget-object v0, Ljwu;->a:Ljwu;

    invoke-virtual {p0}, Lgyp;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
