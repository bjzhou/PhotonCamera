.class public final Ldnq;
.super Ljava/lang/RuntimeException;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lkbo;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Lkbo;[Lklv;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ldnq;->a:Ljava/util/List;

    iput-object p2, p0, Ldnq;->b:Lkbo;

    return-void
.end method
