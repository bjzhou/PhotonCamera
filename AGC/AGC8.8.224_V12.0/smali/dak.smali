.class public final enum Ldak;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldak;

.field public static final enum b:Ldak;

.field public static final enum c:Ldak;

.field private static final synthetic f:[Ldak;


# instance fields
.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ldak;

    const-string v1, "ENABLED_VISIBLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Ldak;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Ldak;->a:Ldak;

    new-instance v1, Ldak;

    const-string v4, "DISABLED_VISIBLE"

    invoke-direct {v1, v4, v3, v2, v3}, Ldak;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Ldak;->b:Ldak;

    new-instance v4, Ldak;

    const-string v5, "DISABLED_HIDDEN"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2, v2}, Ldak;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Ldak;->c:Ldak;

    const/4 v5, 0x3

    new-array v5, v5, [Ldak;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v6

    sput-object v5, Ldak;->f:[Ldak;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Ldak;->d:Z

    iput-boolean p4, p0, Ldak;->e:Z

    return-void
.end method

.method public static values()[Ldak;
    .locals 1

    sget-object v0, Ldak;->f:[Ldak;

    invoke-virtual {v0}, [Ldak;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldak;

    return-object v0
.end method
