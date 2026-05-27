.class public final enum Lhjv;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhjv;

.field public static final enum b:Lhjv;

.field private static final synthetic c:[Lhjv;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lhjv;

    const-string v1, "APP_ONCREATE_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhjv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhjv;->a:Lhjv;

    new-instance v1, Lhjv;

    const-string v3, "APP_ONCREATE_END"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhjv;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhjv;->b:Lhjv;

    const/4 v3, 0x2

    new-array v3, v3, [Lhjv;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lhjv;->c:[Lhjv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhjv;
    .locals 1

    sget-object v0, Lhjv;->c:[Lhjv;

    invoke-virtual {v0}, [Lhjv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhjv;

    return-object v0
.end method
