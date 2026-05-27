.class public final enum Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/ConcatAdapter$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StableIdMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

.field public static final enum ISOLATED_STABLE_IDS:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

.field public static final enum NO_STABLE_IDS:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

.field public static final enum SHARED_STABLE_IDS:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;


# direct methods
.method private static synthetic $values()[Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    sget-object v1, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;->ISOLATED_STABLE_IDS:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;->SHARED_STABLE_IDS:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    const-string v1, "NO_STABLE_IDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    new-instance v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    const-string v1, "ISOLATED_STABLE_IDS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;->ISOLATED_STABLE_IDS:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    new-instance v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    const-string v1, "SHARED_STABLE_IDS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;->SHARED_STABLE_IDS:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    invoke-static {}, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;->$values()[Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    move-result-object v0

    sput-object v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;->$VALUES:[Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;
    .locals 1

    const-class v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    return-object p0
.end method

.method public static values()[Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;
    .locals 1

    sget-object v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;->$VALUES:[Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    invoke-virtual {v0}, [Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    return-object v0
.end method
