.class public final Lmnv;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lmvv;


# direct methods
.method public constructor <init>(Lmvv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmnv;->a:Lmvv;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, " -> "

    iget-object v1, p0, Lmnv;->a:Lmvv;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
