.class public final enum Lfta;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lfta;

.field public static final enum b:Lfta;

.field private static final synthetic c:[Lfta;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lfta;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfta;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfta;->a:Lfta;

    new-instance v1, Lfta;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lfta;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfta;->b:Lfta;

    const/4 v3, 0x2

    new-array v3, v3, [Lfta;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lfta;->c:[Lfta;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lfta;
    .locals 1

    sget-object v0, Lfta;->c:[Lfta;

    invoke-virtual {v0}, [Lfta;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfta;

    return-object v0
.end method
