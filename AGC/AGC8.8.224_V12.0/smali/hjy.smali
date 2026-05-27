.class public final enum Lhjy;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhjy;

.field public static final enum b:Lhjy;

.field private static final synthetic c:[Lhjy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lhjy;

    const-string v1, "MODE_SWITCH_FIRST_PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhjy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhjy;->a:Lhjy;

    new-instance v1, Lhjy;

    const-string v3, "MODE_SWITCH_END"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhjy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhjy;->b:Lhjy;

    const/4 v3, 0x2

    new-array v3, v3, [Lhjy;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lhjy;->c:[Lhjy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhjy;
    .locals 1

    sget-object v0, Lhjy;->c:[Lhjy;

    invoke-virtual {v0}, [Lhjy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhjy;

    return-object v0
.end method
