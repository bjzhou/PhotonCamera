.class public final enum Lgyw;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lgyw;

.field public static final enum b:Lgyw;

.field private static final synthetic c:[Lgyw;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lgyw;

    const-string v1, "RES_1080P"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgyw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgyw;->a:Lgyw;

    new-instance v1, Lgyw;

    const-string v3, "RES_2160P"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lgyw;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgyw;->b:Lgyw;

    const/4 v3, 0x2

    new-array v3, v3, [Lgyw;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lgyw;->c:[Lgyw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lgyw;
    .locals 1

    const-class v0, Lgyw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgyw;

    return-object p0
.end method

.method public static b(Ljwu;)Lmqp;
    .locals 1

    sget-object v0, Lgyp;->a:Lgyp;

    sget-object v0, Ljwu;->a:Ljwu;

    invoke-virtual {p0}, Ljwu;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lmpx;->a:Lmpx;

    return-object p0

    :pswitch_1
    sget-object p0, Lgyw;->b:Lgyw;

    invoke-static {p0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lgyw;->a:Lgyw;

    invoke-static {p0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static values()[Lgyw;
    .locals 1

    sget-object v0, Lgyw;->c:[Lgyw;

    invoke-virtual {v0}, [Lgyw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgyw;

    return-object v0
.end method
