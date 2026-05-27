.class public final enum Lfdv;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lfdv;

.field public static final enum b:Lfdv;

.field private static final synthetic c:[Lfdv;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lfdv;

    const-string v1, "NPF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfdv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfdv;->a:Lfdv;

    new-instance v1, Lfdv;

    const-string v3, "LIGHTCYCLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lfdv;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfdv;->b:Lfdv;

    const/4 v3, 0x2

    new-array v3, v3, [Lfdv;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lfdv;->c:[Lfdv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lfdv;
    .locals 1

    sget-object v0, Lfdv;->c:[Lfdv;

    invoke-virtual {v0}, [Lfdv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfdv;

    return-object v0
.end method
