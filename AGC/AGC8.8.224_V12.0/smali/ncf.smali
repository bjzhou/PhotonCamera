.class final Lncf;
.super Lnck;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnck;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lncb;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
