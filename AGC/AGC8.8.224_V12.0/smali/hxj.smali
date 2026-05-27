.class public final enum Lhxj;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhxj;

.field public static final enum b:Lhxj;

.field public static final enum c:Lhxj;

.field public static final enum d:Lhxj;

.field public static final enum e:Lhxj;

.field private static final synthetic f:[Lhxj;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lhxj;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhxj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhxj;->a:Lhxj;

    new-instance v1, Lhxj;

    const-string v3, "CLOSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhxj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhxj;->b:Lhxj;

    new-instance v3, Lhxj;

    const-string v5, "BOOK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhxj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhxj;->c:Lhxj;

    new-instance v5, Lhxj;

    const-string v7, "FLAT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lhxj;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lhxj;->d:Lhxj;

    new-instance v7, Lhxj;

    const-string v9, "JARVIS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lhxj;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lhxj;->e:Lhxj;

    const/4 v9, 0x5

    new-array v9, v9, [Lhxj;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lhxj;->f:[Lhxj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhxj;
    .locals 1

    sget-object v0, Lhxj;->f:[Lhxj;

    invoke-virtual {v0}, [Lhxj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhxj;

    return-object v0
.end method
