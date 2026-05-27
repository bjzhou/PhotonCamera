.class public final enum Lcwx;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcwx;

.field public static final enum b:Lcwx;

.field public static final enum c:Lcwx;

.field public static final enum d:Lcwx;

.field public static final enum e:Lcwx;

.field private static final synthetic g:[Lcwx;


# instance fields
.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcwx;

    const-string v1, "OFF"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcwx;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcwx;->a:Lcwx;

    new-instance v1, Lcwx;

    const-string v4, "DEFAULT"

    invoke-direct {v1, v4, v3, v2}, Lcwx;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcwx;->b:Lcwx;

    new-instance v4, Lcwx;

    const-string v5, "CINEMATIC"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Lcwx;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcwx;->c:Lcwx;

    new-instance v5, Lcwx;

    const-string v7, "LOCKED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcwx;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcwx;->d:Lcwx;

    new-instance v7, Lcwx;

    const-string v9, "ACTIVE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v3}, Lcwx;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcwx;->e:Lcwx;

    const/4 v9, 0x5

    new-array v9, v9, [Lcwx;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcwx;->g:[Lcwx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcwx;->f:Z

    return-void
.end method

.method public static values()[Lcwx;
    .locals 1

    sget-object v0, Lcwx;->g:[Lcwx;

    invoke-virtual {v0}, [Lcwx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcwx;

    return-object v0
.end method
