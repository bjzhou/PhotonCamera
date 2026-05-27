.class public final enum Lcua;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcua;

.field public static final enum b:Lcua;

.field public static final enum c:Lcua;

.field public static final enum d:Lcua;

.field public static final enum e:Lcua;

.field private static final synthetic f:[Lcua;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcua;

    const-string v1, "MODULE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcua;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcua;->a:Lcua;

    new-instance v1, Lcua;

    const-string v3, "CAPTURE_SESSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcua;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcua;->b:Lcua;

    new-instance v3, Lcua;

    const-string v5, "RECORDING_SESSION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcua;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcua;->c:Lcua;

    new-instance v5, Lcua;

    const-string v7, "VIDEO_RECORDER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcua;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcua;->d:Lcua;

    new-instance v7, Lcua;

    const-string v9, "FOCUS_SESSION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcua;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcua;->e:Lcua;

    const/4 v9, 0x5

    new-array v9, v9, [Lcua;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcua;->f:[Lcua;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcua;
    .locals 1

    sget-object v0, Lcua;->f:[Lcua;

    invoke-virtual {v0}, [Lcua;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcua;

    return-object v0
.end method
