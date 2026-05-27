.class public final enum Lcks;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcks;

.field public static final enum b:Lcks;

.field private static final synthetic c:[Lcks;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcks;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcks;->a:Lcks;

    new-instance v1, Lcks;

    const-string v3, "MAX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcks;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcks;->b:Lcks;

    const/4 v3, 0x2

    new-array v3, v3, [Lcks;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcks;->c:[Lcks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lcks;)I
    .locals 0

    invoke-virtual {p0}, Lcks;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lcks;
    .locals 1

    sget-object v0, Lcks;->c:[Lcks;

    invoke-virtual {v0}, [Lcks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcks;

    return-object v0
.end method
