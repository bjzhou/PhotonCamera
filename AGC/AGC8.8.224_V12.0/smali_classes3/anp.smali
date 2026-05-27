.class final Lanp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic a:Lanq;


# direct methods
.method public constructor <init>(Lanq;)V
    .locals 0

    iput-object p1, p0, Lanp;->a:Lanq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2

    iget-object p1, p0, Lanp;->a:Lanq;

    if-eqz p3, :cond_0

    iget-boolean p3, p1, Lanq;->ae:Z

    iget-object v0, p1, Lanq;->ad:Ljava/util/Set;

    iget-object v1, p1, Lanq;->ag:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    iput-boolean p2, p1, Lanq;->ae:Z

    return-void

    :cond_0
    iget-boolean p3, p1, Lanq;->ae:Z

    iget-object v0, p1, Lanq;->ad:Ljava/util/Set;

    iget-object v1, p1, Lanq;->ag:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    iput-boolean p2, p1, Lanq;->ae:Z

    return-void
.end method
