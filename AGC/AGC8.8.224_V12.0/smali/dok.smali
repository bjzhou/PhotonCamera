.class public final enum Ldok;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldok;

.field public static final enum b:Ldok;

.field private static final synthetic c:[Ldok;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ldok;

    const-string v1, "BRIGHTNESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldok;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldok;->a:Ldok;

    new-instance v1, Ldok;

    const-string v3, "SHADOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldok;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldok;->b:Ldok;

    const/4 v3, 0x2

    new-array v3, v3, [Ldok;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ldok;->c:[Ldok;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldok;
    .locals 1

    sget-object v0, Ldok;->c:[Ldok;

    invoke-virtual {v0}, [Ldok;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldok;

    return-object v0
.end method
