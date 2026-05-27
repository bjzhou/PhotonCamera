.class public final enum Lhrg;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhrg;

.field public static final enum b:Lhrg;

.field public static final enum c:Lhrg;

.field public static final enum d:Lhrg;

.field public static final enum e:Lhrg;

.field public static final enum f:Lhrg;

.field private static final synthetic g:[Lhrg;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lhrg;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhrg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhrg;->a:Lhrg;

    new-instance v1, Lhrg;

    const-string v3, "OPTICAL_FLOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhrg;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhrg;->b:Lhrg;

    new-instance v3, Lhrg;

    const-string v5, "GYRO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhrg;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhrg;->c:Lhrg;

    new-instance v5, Lhrg;

    const-string v7, "GPU_TEMPLATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lhrg;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lhrg;->d:Lhrg;

    new-instance v7, Lhrg;

    const-string v9, "ML"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lhrg;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lhrg;->e:Lhrg;

    new-instance v9, Lhrg;

    const-string v11, "HYBRID"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lhrg;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lhrg;->f:Lhrg;

    const/4 v11, 0x6

    new-array v11, v11, [Lhrg;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lhrg;->g:[Lhrg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lhrg;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lhrg;->a:Lhrg;

    return-object p0

    :pswitch_0
    sget-object p0, Lhrg;->f:Lhrg;

    return-object p0

    :pswitch_1
    sget-object p0, Lhrg;->e:Lhrg;

    return-object p0

    :pswitch_2
    sget-object p0, Lhrg;->d:Lhrg;

    return-object p0

    :pswitch_3
    sget-object p0, Lhrg;->c:Lhrg;

    return-object p0

    :pswitch_4
    sget-object p0, Lhrg;->b:Lhrg;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lhrg;
    .locals 1

    sget-object v0, Lhrg;->g:[Lhrg;

    invoke-virtual {v0}, [Lhrg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhrg;

    return-object v0
.end method
