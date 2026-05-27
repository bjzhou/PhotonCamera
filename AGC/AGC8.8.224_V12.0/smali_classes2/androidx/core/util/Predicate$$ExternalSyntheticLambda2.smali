.class public final synthetic Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Predicate;


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Predicate;

.field public final synthetic f$1:Landroidx/core/util/Predicate;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;->f$0:Landroidx/core/util/Predicate;

    iput-object p2, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;->f$1:Landroidx/core/util/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;->f$0:Landroidx/core/util/Predicate;

    iget-object p0, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;->f$1:Landroidx/core/util/Predicate;

    invoke-static {v0, p0, p1}, Landroidx/core/util/Predicate;->lambda$or$2(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
