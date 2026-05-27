.class public final enum Leij;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Leij;

.field public static final enum b:Leij;

.field private static final synthetic c:[Leij;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Leij;

    const-string v1, "WHITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leij;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leij;->a:Leij;

    new-instance v1, Leij;

    const-string v3, "RED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leij;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leij;->b:Leij;

    const/4 v3, 0x2

    new-array v3, v3, [Leij;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Leij;->c:[Leij;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Leij;
    .locals 1

    sget-object v0, Leij;->c:[Leij;

    invoke-virtual {v0}, [Leij;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leij;

    return-object v0
.end method
