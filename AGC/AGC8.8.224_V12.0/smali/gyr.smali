.class public final enum Lgyr;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lgyr;

.field public static final enum b:Lgyr;

.field public static final enum c:Lgyr;

.field public static final enum d:Lgyr;

.field private static final synthetic e:[Lgyr;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lgyr;

    const-string v1, "FPS_AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgyr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgyr;->a:Lgyr;

    new-instance v1, Lgyr;

    const-string v3, "FPS_24"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lgyr;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgyr;->b:Lgyr;

    new-instance v3, Lgyr;

    const-string v5, "FPS_30"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lgyr;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lgyr;->c:Lgyr;

    new-instance v5, Lgyr;

    const-string v7, "FPS_60"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lgyr;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lgyr;->d:Lgyr;

    const/4 v7, 0x4

    new-array v7, v7, [Lgyr;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lgyr;->e:[Lgyr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lgyr;
    .locals 1

    const-class v0, Lgyr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgyr;

    return-object p0
.end method

.method public static values()[Lgyr;
    .locals 1

    sget-object v0, Lgyr;->e:[Lgyr;

    invoke-virtual {v0}, [Lgyr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgyr;

    return-object v0
.end method
