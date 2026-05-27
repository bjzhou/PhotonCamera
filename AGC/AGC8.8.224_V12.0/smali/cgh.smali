.class public final enum Lcgh;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcgh;

.field public static final enum b:Lcgh;

.field public static final enum c:Lcgh;

.field private static final synthetic d:[Lcgh;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcgh;

    const-string v1, "HIDDEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcgh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcgh;->a:Lcgh;

    new-instance v1, Lcgh;

    const-string v3, "EXPANDED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcgh;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcgh;->b:Lcgh;

    new-instance v3, Lcgh;

    const-string v5, "COLLAPSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcgh;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcgh;->c:Lcgh;

    const/4 v5, 0x3

    new-array v5, v5, [Lcgh;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcgh;->d:[Lcgh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcgh;
    .locals 1

    sget-object v0, Lcgh;->d:[Lcgh;

    invoke-virtual {v0}, [Lcgh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcgh;

    return-object v0
.end method
