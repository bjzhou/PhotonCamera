.class public final enum Leqg;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Leqg;

.field public static final enum b:Leqg;

.field public static final enum c:Leqg;

.field private static final synthetic d:[Leqg;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Leqg;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leqg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqg;->a:Leqg;

    new-instance v1, Leqg;

    const-string v3, "LANDSCAPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leqg;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leqg;->b:Leqg;

    new-instance v3, Leqg;

    const-string v5, "ACTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leqg;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leqg;->c:Leqg;

    const/4 v5, 0x3

    new-array v5, v5, [Leqg;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Leqg;->d:[Leqg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Leqg;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Leqg;->a:Leqg;

    return-object p0

    :pswitch_0
    sget-object p0, Leqg;->c:Leqg;

    return-object p0

    :pswitch_1
    sget-object p0, Leqg;->b:Leqg;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Leqg;
    .locals 1

    sget-object v0, Leqg;->d:[Leqg;

    invoke-virtual {v0}, [Leqg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leqg;

    return-object v0
.end method
