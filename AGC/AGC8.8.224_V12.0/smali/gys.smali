.class public final enum Lgys;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lgys;

.field public static final enum b:Lgys;

.field public static final enum c:Lgys;

.field private static final synthetic d:[Lgys;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lgys;

    const-string v1, "PHONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgys;->a:Lgys;

    new-instance v1, Lgys;

    const-string v3, "EXT_WIRED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lgys;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgys;->b:Lgys;

    new-instance v3, Lgys;

    const-string v5, "EXT_BLUETOOTH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lgys;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lgys;->c:Lgys;

    const/4 v5, 0x3

    new-array v5, v5, [Lgys;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lgys;->d:[Lgys;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lgys;
    .locals 1

    sget-object v0, Lgys;->d:[Lgys;

    invoke-virtual {v0}, [Lgys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgys;

    return-object v0
.end method
