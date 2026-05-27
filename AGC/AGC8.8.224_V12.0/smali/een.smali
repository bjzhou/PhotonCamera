.class public final enum Leen;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Leen;

.field public static final enum b:Leen;

.field public static final enum c:Leen;

.field public static final enum d:Leen;

.field private static final synthetic e:[Leen;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Leen;

    const-string v1, "ORIGINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leen;->a:Leen;

    new-instance v1, Leen;

    const-string v3, "PRIMARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leen;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leen;->b:Leen;

    new-instance v3, Leen;

    const-string v5, "SECONDARY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leen;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leen;->c:Leen;

    new-instance v5, Leen;

    const-string v7, "DEBUG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Leen;-><init>(Ljava/lang/String;I)V

    sput-object v5, Leen;->d:Leen;

    const/4 v7, 0x4

    new-array v7, v7, [Leen;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Leen;->e:[Leen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Leen;
    .locals 1

    sget-object v0, Leen;->e:[Leen;

    invoke-virtual {v0}, [Leen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leen;

    return-object v0
.end method
