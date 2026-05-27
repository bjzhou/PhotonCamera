.class public final enum Lhka;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhka;

.field public static final enum b:Lhka;

.field public static final enum c:Lhka;

.field public static final enum d:Lhka;

.field public static final enum e:Lhka;

.field private static final synthetic f:[Lhka;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lhka;

    const-string v1, "ONECAMERA_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhka;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhka;->a:Lhka;

    new-instance v1, Lhka;

    const-string v3, "ONECAMERA_CREATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhka;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhka;->b:Lhka;

    new-instance v3, Lhka;

    const-string v5, "ONECAMERA_CREATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhka;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhka;->c:Lhka;

    new-instance v5, Lhka;

    const-string v7, "ONECAMERA_START"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lhka;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lhka;->d:Lhka;

    new-instance v7, Lhka;

    const-string v9, "ONECAMERA_STARTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lhka;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lhka;->e:Lhka;

    const/4 v9, 0x5

    new-array v9, v9, [Lhka;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lhka;->f:[Lhka;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhka;
    .locals 1

    sget-object v0, Lhka;->f:[Lhka;

    invoke-virtual {v0}, [Lhka;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhka;

    return-object v0
.end method
