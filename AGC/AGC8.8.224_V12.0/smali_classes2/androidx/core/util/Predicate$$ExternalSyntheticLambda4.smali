.class public final synthetic Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;->INSTANCE:Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Landroidx/core/util/Predicate;->lambda$isEqual$3(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
