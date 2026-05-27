.class public final synthetic Lmmy;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field public final synthetic a:Lmnb;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lmnb;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmmy;->a:Lmnb;

    iput p2, p0, Lmmy;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lnou;
    .locals 2

    iget-object v0, p0, Lmmy;->a:Lmnb;

    iget v1, p0, Lmmy;->b:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lmnb;->d(I)Lnou;

    move-result-object p1

    return-object p1
.end method
